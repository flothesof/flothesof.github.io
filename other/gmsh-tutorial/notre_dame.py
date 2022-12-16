from sfepy.mechanics.matcoefs import stiffness_from_lame
import numpy as nm

filename_mesh = 'mesh.vtk'

regions = {
    'Omega': 'all',
    'Bottom': ('vertices in (y <= -412.)',
               'vertex'),
}

materials = {
    'solid': ({'D': stiffness_from_lame(dim=2, lam=1e1, mu=1e0)},),
    'gravity': ({'val': nm.array([0.0, -9.8])[:, nm.newaxis]},)
}

fields = {
    'displacement': ('real', 'vector', 'Omega', 1),
}

integrals = {
    'i': 2,
}

variables = {
    'u': ('unknown field', 'displacement', 0),
    'v': ('test field', 'displacement', 'u'),
}

ebcs = {
    'Fixed': ('Bottom', {'u.all': 0.0}),
}

equations = {
    'balance_of_forces':
        """dw_lin_elastic.i.Omega(solid.D, v, u) = dw_volume_lvf.i.Omega( gravity.val, v)""",
}

solvers = {
    'ls': ('ls.auto_direct', {}),
    'newton': ('nls.newton', {
        'i_max': 1,
        'eps_a': 1e-10,
    }),
}

options = {'output_dir': 'output'}
