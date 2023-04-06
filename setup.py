from setuptools import setup, find_packages

with open("README.md", "r") as readme_file:
    readme = readme_file.read()

requirements = ["protobuf>=4"]

setup(
    name="androidutils",
    version="0.0.1",
    author="BRUHItsABunny",
    author_email="",
    description="Android utilities all in one spot, python",
    long_description=readme,
    long_description_content_type="text/markdown",
    url="https://github.com/BRUHItsABunny/py-android-utils/",
    packages=find_packages(),
    install_requires=requirements,
    classifiers=[
        "Programming Language :: Python :: 3.7",
        "License :: OSI Approved :: GNU General Public License v3 (GPLv3)",
    ],
)