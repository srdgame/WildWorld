local _={}

_.name="Zebra"
_.new=function(options)
	local result=BaseEntity.new(options)
	
	result.x=0
	result.y=0
	
	result.mountX=33
	result.mountY=47
	
	result.originX=33
	result.originY=47
	
	result.footX=30
	result.footY=63
	
	Entity.setSprite(result,"zebra")
	result.isDrawable=true
	result.aiEnabled=true
	result.isMountable=true
	
	Entity.afterCreated(result,_,options)
	
	return result
end

_.draw=DrawableBehaviour.draw

_.updateAi=require("misc/ai/pantera_ai")

return _