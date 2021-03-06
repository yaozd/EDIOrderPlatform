package com.edi.commcn.edi.bean.eid;

public class RequestOrder
{
	/**
	 * 代收金额（代收订单时，金额必须>0） 
	 */
	public String codAmount;

	/**
	 * 数据标识(用于分仓发货,C2C 类客户省略) 
	 */
	public String dataFlag;

	/**
	 * 订单标识
	 */
	public String flag;

	/**
	 * 保险费(暂丌使用)
	 */
	public String insuranceValue;

	/**
	 * 商品信息
	 */
	public item[] items;

	/**
	 * 商品总品名：品名*数量|…|品名*数量 
	 */
	public String itemsName;

	/**
	 * 商品总数量。根据您的发货单位统计数量
	 */
	public String itemsNumber;

	/**
	 * 商品尺寸：长*宽*高*件数,
	 */
	public String itemsVolume;

	/**
	 * 总重量（KG 精度.00） 
	 */
	public String itemsWeight;

	/**
	 * 客户标识(宅急送提供)
	 */
	public String logisticProviderID;

	/**
	 * 快递单号(宅急送物流单号) 
	 */
	public String mailNo;

	/**
	 * 客户单号（物流订单号）
	 */
	public String orderNo;

	/**
	 * 收件人信息
	 */
	public receiver receiver;

	/**
	 * 重要提示
	 */
	public String remark;

	/**
	 * 寄件人信息
	 */
	public sender sender;

	/**
	 * 物流子订单号，多个子订单号逗号隔开
	 */
	public String subOrderNo;

	/**
	 * 业务交易号（财务对账使用）
	 */
	public String tradeNo;

	/**
	 * 代收订单 0、普通正向 1、退货订单 2 
	 */
	public String type;

	/**
	 * @return the 代收金额（代收订单时，金额必须>0）
	 */
	public String getCodAmount()
	{
		return codAmount;
	}

	/**
	 * @param 代收金额（代收订单时，金额必须>0） the codAmount to set
	 */
	public void setCodAmount(String codAmount)
	{
		this.codAmount = codAmount;
	}

	/**
	 * @return the 数据标识(用于分仓发货C2C类客户省略)
	 */
	public String getDataFlag()
	{
		return dataFlag;
	}

	/**
	 * @param 数据标识(用于分仓发货C2C类客户省略) the dataFlag to set
	 */
	public void setDataFlag(String dataFlag)
	{
		this.dataFlag = dataFlag;
	}

	/**
	 * @return the 订单标识
	 */
	public String getFlag()
	{
		return flag;
	}

	/**
	 * @param 订单标识 the flag to set
	 */
	public void setFlag(String flag)
	{
		this.flag = flag;
	}

	/**
	 * @return the 保险费(暂丌使用)
	 */
	public String getInsuranceValue()
	{
		return insuranceValue;
	}

	/**
	 * @param 保险费(暂丌使用) the insuranceValue to set
	 */
	public void setInsuranceValue(String insuranceValue)
	{
		this.insuranceValue = insuranceValue;
	}

	/**
	 * @return the 商品信息
	 */
	public item[] getItems()
	{
		return items;
	}

	/**
	 * @param 商品信息 the items to set
	 */
	public void setItems(item[] items)
	{
		this.items = items;
	}

	/**
	 * @return the 商品总品名：品名数量|…|品名数量
	 */
	public String getItemsName()
	{
		return itemsName;
	}

	/**
	 * @param 商品总品名：品名数量|…|品名数量 the itemsName to set
	 */
	public void setItemsName(String itemsName)
	{
		this.itemsName = itemsName;
	}

	/**
	 * @return the 商品总数量。根据您的发货单位统计数量
	 */
	public String getItemsNumber()
	{
		return itemsNumber;
	}

	/**
	 * @param 商品总数量。根据您的发货单位统计数量 the itemsNumber to set
	 */
	public void setItemsNumber(String itemsNumber)
	{
		this.itemsNumber = itemsNumber;
	}

	/**
	 * @return the 商品尺寸：长宽高件数
	 */
	public String getItemsVolume()
	{
		return itemsVolume;
	}

	/**
	 * @param 商品尺寸：长宽高件数 the itemsVolume to set
	 */
	public void setItemsVolume(String itemsVolume)
	{
		this.itemsVolume = itemsVolume;
	}

	/**
	 * @return the 总重量（KG精度.00）
	 */
	public String getItemsWeight()
	{
		return itemsWeight;
	}

	/**
	 * @param 总重量（KG精度.00） the itemsWeight to set
	 */
	public void setItemsWeight(String itemsWeight)
	{
		this.itemsWeight = itemsWeight;
	}

	/**
	 * @return the 客户标识(宅急送提供)
	 */
	public String getLogisticProviderID()
	{
		return logisticProviderID;
	}

	/**
	 * @param 客户标识(宅急送提供) the logisticProviderID to set
	 */
	public void setLogisticProviderID(String logisticProviderID)
	{
		this.logisticProviderID = logisticProviderID;
	}

	/**
	 * @return the 快递单号(宅急送物流单号)
	 */
	public String getMailNo()
	{
		return mailNo;
	}

	/**
	 * @param 快递单号(宅急送物流单号) the mailNo to set
	 */
	public void setMailNo(String mailNo)
	{
		this.mailNo = mailNo;
	}

	/**
	 * @return the 客户单号（物流订单号）
	 */
	public String getOrderNo()
	{
		return orderNo;
	}

	/**
	 * @param 客户单号（物流订单号） the orderNo to set
	 */
	public void setOrderNo(String orderNo)
	{
		this.orderNo = orderNo;
	}

	/**
	 * @return the 收件人信息
	 */
	public receiver getReceiver()
	{
		return receiver;
	}

	/**
	 * @param 收件人信息 the receiver to set
	 */
	public void setReceiver(receiver receiver)
	{
		this.receiver = receiver;
	}

	/**
	 * @return the 重要提示
	 */
	public String getRemark()
	{
		return remark;
	}

	/**
	 * @param 重要提示 the remark to set
	 */
	public void setRemark(String remark)
	{
		this.remark = remark;
	}

	/**
	 * @return the 寄件人信息
	 */
	public sender getSender()
	{
		return sender;
	}

	/**
	 * @param 寄件人信息 the sender to set
	 */
	public void setSender(sender sender)
	{
		this.sender = sender;
	}

	/**
	 * @return the 物流子订单号，多个子订单号逗号隔开
	 */
	public String getSubOrderNo()
	{
		return subOrderNo;
	}

	/**
	 * @param 物流子订单号，多个子订单号逗号隔开 the subOrderNo to set
	 */
	public void setSubOrderNo(String subOrderNo)
	{
		this.subOrderNo = subOrderNo;
	}

	/**
	 * @return the 业务交易号（财务对账使用）
	 */
	public String getTradeNo()
	{
		return tradeNo;
	}

	/**
	 * @param 业务交易号（财务对账使用） the tradeNo to set
	 */
	public void setTradeNo(String tradeNo)
	{
		this.tradeNo = tradeNo;
	}

	/**
	 * @return the 代收订单0、普通正向1、退货订单2
	 */
	public String getType()
	{
		return type;
	}

	/**
	 * @param 代收订单0、普通正向1、退货订单2 the type to set
	 */
	public void setType(String type)
	{
		this.type = type;
	}

}
