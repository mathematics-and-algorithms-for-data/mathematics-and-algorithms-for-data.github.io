import bibtexparser
from bibtexparser.customization import convert_to_unicode

with open('main.bib') as bibtex_file:
    # bib_database = bibtexparser.load(bibtex_file)
    parser = bibtexparser.bparser.BibTexParser(common_strings=True)
    parser.customization = convert_to_unicode
    # bib_database = bibtexparser.load(bibtex_file, parser=parser)
    bib_database = parser.parse_file(bibtex_file)

# print(bib_database.entries)

yaml_strings = []

for e in bib_database.entries:
	# print(e['ENTRYTYPE'])

	# print(e.keys())
	# print(e)

	def remove_braces(s):
		return s.replace('{', '').replace('}', '').replace('\n', ' ')


	def parse_authors(s):
		names = remove_braces(s).split('and')
		output = ''

		def fix_name(n):
			l = n.split(',')
			if len(l) == 1:
				return n
			elif len(l) == 2:
				return l[1].strip() + ' ' + l[0].strip()
			else:
				raise ValueError('Cannot parse author name {} from {}'.format(n))

		for i, n in enumerate(names):
			f = fix_name(n)
			if len(names) == 1:
				output += f.strip()
			elif i == (len(names) - 1):
				output += ' and ' + f.strip()
			elif i == 0:
				output += f.strip()
			else:
				output += ', ' + f.strip()

		return output.strip()


	extra_yml = '\n'

	if e['ENTRYTYPE'] == 'article':
		title = remove_braces(e['title'])
		authors = parse_authors(e['author'])
		if 'journal' in e.keys():
			venue = remove_braces(e['journal'])
			vol = e.get('volume', None)
			if vol:
				venue += ' vol. {}'.format(vol)
				num = e.get('number', None)
				if num:
					venue += ', no. {}'.format(num)
		elif 'arxivid' in e.keys():
			venue = 'arXiv e-print {}'.format(e['arxivid'])
			extra_yml += '    arxiv-link: https://arxiv.org/abs/{}\n'.format(e['arxivid'])
		else:
			print(e)
			raise ValueError('Article has no journal.')
		year = e['year']

	elif e['ENTRYTYPE'] in ['inproceedings', 'incollection']:
		title = remove_braces(e['title'])
		authors = parse_authors(e['author'])
		venue = remove_braces(e['booktitle'])
		year = e['year']

	else:
		print('Skipping entry type: ', e['ENTRYTYPE'])
		print('Details:', e)

	yml_entry = """  - title: "{0}"
    authors: "{1}"
    venue: "{2}"
    year: {3}""".format(title, authors, venue, year) + extra_yml
	
	print(yml_entry)

	yaml_strings.append(yml_entry)


print('WRITIING TO output.yml..')
with open('output.yml', 'w') as f:
	f.write('\n'.join(yaml_strings))

