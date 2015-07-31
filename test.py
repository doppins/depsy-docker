import subprocess

import click
from docker.manager import Docker


@click.command()
@click.argument('repo')
def main(repo):
    """
    Tests the Dockerfile. Builds it and clones the repository passed
    to the repo arguments.
    """
    print(subprocess.call(['make', 'setup']))
    with Docker('depsy') as docker:
        print(docker.run('git clone {repo} cloned'.format(repo=repo)).out)

if __name__ == '__main__':
    main()
