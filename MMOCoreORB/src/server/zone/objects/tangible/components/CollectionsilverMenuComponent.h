
/*
 * CollectionsilverMenuComponent.h
 */

#ifndef CollectionsilverMENUCOMPONENT_H_
#define CollectionsilverMENUCOMPONENT_H_

#include "TangibleObjectMenuComponent.h"

class CollectionsilverMenuComponent : public TangibleObjectMenuComponent {
public:
	virtual int handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* player, byte selectedID) const;

	virtual void fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const;

};


#endif /* CollectionsilverMENUCOMPONENT_H_ */