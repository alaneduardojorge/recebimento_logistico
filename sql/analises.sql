-- análise 1: volume por responsável
select
	resp_descarga.nome as responsavel,
	count(numero_laudo) as qtde_laudos,
	sum(qtde_fisico) as qtde_pallets
from
	recebimento
	join resp_descarga on recebimento.id_resp_descarga = resp_descarga.id_resp_descarga
group by
	responsavel
order by
	qtde_pallets desc;

-- análise 2: tempo e produtividade
select
	rd.nome as responsavel,
	sum(r.qtde_fisico) as plts_recebidos,
	round(
		sum(
			extract(
				epoch
				from
					(r.ts_liberacao - r.ts_chegada)
			) / 60
		),
		0
	) as tempo_total_espera,
	round(
		avg(
			extract(
				epoch
				from
					(ts_liberacao - ts_chegada)
			) / 60
		),
		2
	) as tempo_medio_espera,
	count(numero_laudo) as qtde_laudos
from
	recebimento r
	join resp_descarga rd on rd.id_resp_descarga = r.id_resp_descarga
group by
	rd.nome
having
	count(r.numero_laudo) > 100
order by
	tempo_medio_espera asc;

-- análise 3: eficiência por tipo de veículo
select
	tv.nome as tipo_veiculo,
	count(r.numero_laudo) as qtde_laudos,
	sum(r.qtde_fisico) as qtde_pallets,
	round(sum(r.qtde_fisico) / count(r.numero_laudo), 2) as qtde_media_por_entrega,
	round(
		(
			count(r.id_tipo_veiculo) / sum(count(r.id_tipo_veiculo)) over ()
		) * 100,
		2
	) as percentual_qtde_laudos,
	round(
		(
			sum(r.qtde_fisico) / sum(sum(r.qtde_fisico)) over ()
		) * 100,
		2
	) as percentual_qtde_pallets,
	round(
		avg(
			extract(
				epoch
				from
					(ts_liberacao - ts_chegada)
			) / 60
		),
		2
	) as tempo_medio_espera
from
	recebimento r
	join tipo_veiculo tv on tv.id_tipo_veiculo = r.id_tipo_veiculo
where
	tv.nome <> 'ABERTO'
group by
	tv.nome
having
	count(r.numero_laudo) > 10
order by
	percentual_qtde_pallets desc;

-- análise 4: maiores parceiros e seus gaps entre físico e sistema