import { Entity, model, property } from '@loopback/repository';

@model()
export class PartsMaster extends Entity {
  @property({
    type: 'string',
    id: true,
    required: true,
  })
  part_nbr: string;

  @property({
    type: 'number',
    required: true,
  })
  brand_nbr: number;

  @property({
    type: 'string',
  })
  part_desc?: string;

  @property({
    type: 'string',
  })
  part_type?: string;

  @property({
    type: 'string',
  })
  category_cd?: string;

  @property({
    type: 'number',
  })
  price?: number;

  @property({
    type: 'boolean',
  })
  oem_flg?: boolean;

  @property({
    type: 'boolean',
  })
  active_flg?: boolean;

  @property({
    type: 'date',
  })
  crt_ts?: string;

  @property({
    type: 'string',
  })
  crt_user_id?: string;

  @property({
    type: 'date',
  })
  last_upd_ts?: string;

  @property({
    type: 'string',
  })
  last_upd_user_id?: string;

  constructor(data?: Partial<PartsMaster>) {
    super(data);
  }
}
