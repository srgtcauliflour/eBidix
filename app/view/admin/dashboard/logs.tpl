{include file='admin/elements/header.tpl'}
	
	<div class="container_12">
		<div class="crumb">&raquo {$lang.Logs}</div>

		<div class="grid_12">
			<div class="sb-box">
				<div class="sb-box-inner content">
					<div class="header">
						<h3>{$lang.Logs}</h3>
					</div>
					<div class="bcont">
						<table class="infotable sortable" cellspacing="0" cellpadding="0" width="100%" id="table">
							<thead>
								<tr>
									<th class="nosort"><input type="checkbox" class="checkall" /></th>
									<th>{$lang.Date}</th>
									<th>{$lang.Message}</th>
									<th class="nosort"><a class="action" href="#"></a></th>
								</tr>
							</thead>
							<tbody>
								{foreach from=$logs item=log}
									<tr>
										<td class="small"><input type="checkbox" /></td>
										<td>{$log.date}</td>
										<td>{$log.message}</td>
										<td class="small"><a class="action" href="#"></a><div class="opmenu"><ul><li><a href="#"></a></li></ul><div class="clear"></div><div class="foot"></div></div></td>
									</tr>
								{/foreach}
							</tbody>
						</table>
						<div id="controls">
							<div id="perpage">
								<select onchange="sorter.size(this.value)">
								<option value="5">5</option>
									<option value="10" selected="selected">10</option>
									<option value="20">20</option>
									<option value="50">50</option>
									<option value="100">100</option>
								</select>
								<span>{$lang.Entries_per_page}</span>
							</div>
							<div id="navigation">
								<img src="/themes/default/admin/images/first.gif" width="16" height="16" alt="" onclick="sorter.move(-1,true)" />
								<img src="/themes/default/admin/images/previous.gif" width="16" height="16" alt="" onclick="sorter.move(-1)" />
								<img src="/themes/default/admin/images/next.gif" width="16" height="16" alt="" onclick="sorter.move(1)" />
								<img src="/themes/default/admin/images/last.gif" width="16" height="16" alt="" onclick="sorter.move(1,true)" />
							</div>
							<div id="text">{$lang.Page} <span id="currentpage"></span> {$lang.on} <span id="pagelimit"></span></div>
						</div>
						<div class="clearingfix"></div>
						{literal}
							<script type="text/javascript">
								var sorter = new TINY.table.sorter("sorter");
								sorter.head = "head";
								sorter.asc = "asc";
								sorter.desc = "desc";
								sorter.even = "evenrow";
								sorter.odd = "oddrow";
								sorter.evensel = "evenselected";
								sorter.oddsel = "oddselected";
								sorter.paginate = true;
								sorter.currentid = "currentpage";
								sorter.limitid = "pagelimit";
								sorter.sortmethod = "desc";
								sorter.init("table",1);
							</script>
						{/literal}
					</div>
				</div>
			</div>
		</div>
		<div class="clearingfix"></div>
	</div>

{include file='admin/elements/footer.tpl'}