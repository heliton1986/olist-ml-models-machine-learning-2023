-- Databricks notebook source
-- Tabela Pagamento por pedido
select *
from silver.olist.pagamento_pedido

-- COMMAND ----------

-- Tabela pedido
select *
from silver.olist.pedido;


-- COMMAND ----------

-- select dtPedido
-- from silver.olist.pedido;

select 
  date(dtPedido) as dtPedido,
  count(*) as qtPedido
from silver.olist.pedido
group by 1
order by 2 desc

-- COMMAND ----------

select 
  *
from silver.olist.pedido

-- COMMAND ----------

select 
  *
from silver.olist.pedido
where dtPedido <= '2018-01-01' 
  and dtPedido >= add_months('2018-01-01', -6)

-- COMMAND ----------

select 
  *
from silver.olist.pedido as ped

left join silver.olist.pagamento_pedido as pp
  on ped.idPedido = pp.idPedido
  
where dtPedido <= '2018-01-01' 
  and dtPedido >= add_months('2018-01-01', -6)

-- COMMAND ----------

select * from silver.olist.pedido

-- COMMAND ----------


