from pathlib import Path

import pandas as pd
import pdfplumber


def extract_pdf_text(path: Path) -> str:
    pages = []
    with pdfplumber.open(path) as pdf:
        for page in pdf.pages:
            text = page.extract_text() or ""
            if text.strip():
                pages.append(text)
    return "\n".join(pages)


def run(pdf_dir: Path) -> pd.DataFrame:
    rows = []
    for pdf_path in sorted(pdf_dir.glob("*.pdf")):
        rows.append({"file": pdf_path.name, "text": extract_pdf_text(pdf_path)})
    return pd.DataFrame(rows)


if __name__ == "__main__":
    df = run(Path("PDF Extraction"))
    print(df.head())
