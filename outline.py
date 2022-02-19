from PyPDF2 import PdfFileReader


def get_outline(section, count):
    if type(section) is not list:
        print("\t" * count + section['/Title'])
        return
    count += 1
    for subsection in section:
        get_outline(subsection, count)


def get_outlines(pdf):
    basic_outline = pdf.outlines
    get_outline(basic_outline, count)


if __name__ == '__main__':
    count = -1
    toc = []
    pdf = PdfFileReader(open('1900577.pdf', 'rb'))

    get_outlines(pdf)
    print(toc)