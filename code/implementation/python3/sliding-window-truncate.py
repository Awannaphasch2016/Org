#!/usr/bin/env python3

import math
import numpy as np

x = list(range(24))
batch = 5

def sliding_window_truncate(x, batch):
  """
  create list of windows where new batches of instances are added to the last
  windows

  Params
  ------
  x: List[int]
  batch: int

  Returns a list of
  """

  train_set_ws =  []
  test_set_ws =  []
  i = 0
  j = i + batch
  for ind in range(len(x)):

    if i != j:
      train_set_ws.append(list(range(1, i+batch)))
      train_set_ws.append(list(range(i+batch, j)))
    else:
      break

    i += batch
    j += batch

    if i > max(x):
      i = max(x) + 1
    if j > max(x):
      j = max(x) + 1

  return train_set_ws, test_set_ws


train_set_ws, test_set_ws = sliding_window_truncate(x, batch)
