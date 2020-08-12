import setuptools

with open("README.md", "r") as fh:
    long_description = fh.read()

setuptools.setup(
    name='make.bat',
    version='0.0.3',
    scripts=['make.bat'],
    author="Francesco Bianco",
    author_email="bianco@javanile.org",
    description="A Docker and AWS utility package",
    long_description=long_description,
    long_description_content_type="text/markdown",
    url="https://github.com/javanile/make.bat",
    packages=setuptools.find_packages(),
    classifiers=[
        "Operating System :: OS Independent",
        "License :: OSI Approved :: MIT License",
        "Programming Language :: Python",
        "Programming Language :: Python :: 2",
        "Programming Language :: Python :: 2.7",
        "Programming Language :: Python :: 3",
        "Programming Language :: Python :: 3.4",
        "Programming Language :: Python :: 3.5",
        "Programming Language :: Python :: 3.6",
        "Programming Language :: Python :: 3.7",
        "Programming Language :: Python :: 3.8",
        "Programming Language :: Python :: Implementation :: CPython",
        "Programming Language :: Python :: Implementation :: PyPy",
    ],
)
