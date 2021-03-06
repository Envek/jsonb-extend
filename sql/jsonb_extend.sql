CREATE EXTENSION jsonb_extend;
select jsonb_extend('1'::jsonb, '[]'::jsonb);
select jsonb_extend('{"1": 2}'::jsonb, '[]'::jsonb);
select jsonb_extend('{}'::jsonb, '{}'::jsonb);
select jsonb_extend('[]'::jsonb, '[]'::jsonb);
select jsonb_extend('[]'::jsonb, '{}'::jsonb);
select jsonb_extend('[]'::jsonb, '1'::jsonb);
select jsonb_extend('[]'::jsonb, '"string"'::jsonb);
select jsonb_extend('{"a": 1}'::jsonb, '{"b": 2}'::jsonb);
select jsonb_extend('[1]'::jsonb, '[2]'::jsonb);
select jsonb_extend('[1]'::jsonb, '2'::jsonb);
select jsonb_extend('[1]'::jsonb, '{"a": 2}'::jsonb);
select jsonb_extend('{"a": 1}'::jsonb, '{"b": 2}'::jsonb);
select jsonb_extend('{"a": 1}'::jsonb, '{"b": 2, "a": 3}'::jsonb);
select jsonb_extend('{"a": 1, "b": 3}'::jsonb, '{"b": 2}'::jsonb);
select jsonb_extend('{"a": 1, "b": 2}'::jsonb, '{"b": {"c": 3}}'::jsonb);
select jsonb_extend('{"a": 1, "b": {"c": 3}}'::jsonb, '{"b": {"d": 4}}'::jsonb);
