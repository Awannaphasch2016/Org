#!/usr/bin/env python3

import math
import logging

logging.basicConfig(level=logging.INFO)
logger = logging.getLogger()

NUM_RUN = 1
train_data = list(range(20))
num_instance = len(train_data)
init_train_data = math.ceil(num_instance * 0.4)
NUM_EPOCH = 1
backprop_every = 1
BATCH_SIZE = 2
end_train_idx = None

total_num_batch =  math.ceil(num_instance/BATCH_SIZE)
init_num_batch = math.ceil((init_train_data)/BATCH_SIZE)
# left_num_batch = total_num_batch - init_num_batch - 1
left_num_batch = total_num_batch - init_num_batch

for i in range(NUM_RUN):
  logger.info('run = {}'.format(i))
  for ws in range(left_num_batch):
    logger.info('-ws = {}'.format(ws))
    ws_idx = ws
    logger.info('-init_num_batch = {}'.format(init_num_batch))
    logger.info('-left_num_batch = {}'.format(left_num_batch))
    logger.info('--train_data per ws = {}'.format(train_data[:init_train_data]))

    for epoch in range(NUM_EPOCH):
      logger.info('--epoch = {}'.format(epoch))
      for k in range(0, init_num_batch, backprop_every):
        assert init_num_batch * BATCH_SIZE == init_train_data
        logger.info('---batch = {}'.format(k))

        for j in range(backprop_every):
          logger.info('----backprop_every = {}'.format(j))
          batch_idx = k + j
          start_train_idx = batch_idx * BATCH_SIZE

          end_train_idx = min(init_train_data, start_train_idx + BATCH_SIZE)
          logger.info('----train_data per backprop   = {}'.format(train_data[start_train_idx:end_train_idx]))
          logger.info('----compute edges probabilitie')

        logger.info('---update loss function')

      logger.info('--compute validate score')

      logger.info('--val_data = {}'.format(train_data[init_train_data:init_train_data + BATCH_SIZE]))

    left_num_batch -= 1
    init_num_batch += 1
    init_train_data = init_num_batch * BATCH_SIZE

    logger.info('-add validation data to training data for next ws')
  logger.info('update average score from each run ')
  logger.info('=======')
