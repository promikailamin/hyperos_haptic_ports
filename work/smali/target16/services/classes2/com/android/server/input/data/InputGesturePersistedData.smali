.class public final Lcom/android/server/input/data/InputGesturePersistedData;
.super Lcom/android/server/input/data/PersistedData;
.source "InputGesturePersistedData.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 54
    const-string v0, "input_gestures"

    invoke-direct {p0, v0}, Lcom/android/server/input/data/PersistedData;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final readInputGestureFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/hardware/input/InputGestureData;
    .registers 8

    .line 109
    new-instance p0, Landroid/hardware/input/InputGestureData$Builder;

    invoke-direct {p0}, Landroid/hardware/input/InputGestureData$Builder;-><init>()V

    .line 110
    const-string v0, "key_gesture_type"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/input/InputGestureData$Builder;->setKeyGestureType(I)Landroid/hardware/input/InputGestureData$Builder;

    .line 111
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 113
    :cond_13
    :goto_13
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_b6

    .line 115
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-gt v0, v3, :cond_9b

    const/4 v3, 0x3

    if-ne v2, v3, :cond_31

    .line 123
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "input_gesture"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    goto/16 :goto_b6

    :cond_31
    const/4 v3, 0x2

    if-eq v2, v3, :cond_35

    goto :goto_13

    .line 131
    :cond_35
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 132
    const-string v3, "key_trigger"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 133
    const-string v2, "keycode"

    .line 134
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "modifiers"

    .line 135
    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 133
    invoke-static {v2, v3}, Landroid/hardware/input/InputGestureData;->createKeyTrigger(II)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/hardware/input/InputGestureData$Builder;->setTrigger(Landroid/hardware/input/InputGestureData$Trigger;)Landroid/hardware/input/InputGestureData$Builder;

    goto :goto_13

    .line 136
    :cond_56
    const-string/jumbo v3, "touchpad_trigger"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 137
    const-string/jumbo v2, "touchpad_gesture_type"

    .line 138
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 137
    invoke-static {v2}, Landroid/hardware/input/InputGestureData;->createTouchpadTrigger(I)Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/hardware/input/InputGestureData$Builder;->setTrigger(Landroid/hardware/input/InputGestureData$Trigger;)Landroid/hardware/input/InputGestureData$Builder;

    goto :goto_13

    .line 139
    :cond_6e
    const-string v3, "app_launch_data"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 140
    const-string/jumbo v2, "role"

    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 141
    const-string v3, "category"

    invoke-interface {p1, v1, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 143
    const-string v4, "class_name"

    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 145
    const-string/jumbo v5, "package_name"

    invoke-interface {p1, v1, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 147
    invoke-static {v3, v2, v5, v4}, Landroid/hardware/input/AppLaunchData;->createLaunchData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/input/AppLaunchData;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 150
    invoke-virtual {p0, v2}, Landroid/hardware/input/InputGestureData$Builder;->setAppLaunchData(Landroid/hardware/input/AppLaunchData;)Landroid/hardware/input/InputGestureData$Builder;

    goto/16 :goto_13

    .line 116
    :cond_9b
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parser has left the initial scope of the tag that was being parsed on line number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getLineNumber()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 154
    :cond_b6
    :goto_b6
    invoke-virtual {p0}, Landroid/hardware/input/InputGestureData$Builder;->build()Landroid/hardware/input/InputGestureData;

    move-result-object p0

    return-object p0
.end method

.method public final readInputGestureListFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;
    .registers 7

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 162
    :cond_9
    :goto_9
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_62

    .line 164
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-gt v1, v3, :cond_47

    const/4 v3, 0x3

    if-ne v2, v3, :cond_26

    .line 172
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "input_gesture_list"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_62

    :cond_26
    const/4 v3, 0x2

    if-eq v2, v3, :cond_2a

    goto :goto_9

    .line 180
    :cond_2a
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 181
    const-string v3, "input_gesture"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 183
    :try_start_36
    invoke-virtual {p0, p1}, Lcom/android/server/input/data/InputGesturePersistedData;->readInputGestureFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/hardware/input/InputGestureData;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_36 .. :try_end_3d} :catch_3e

    goto :goto_9

    :catch_3e
    move-exception v2

    .line 185
    const-string v3, "InputGesturePersistedData"

    const-string v4, "Invalid parameters for input gesture data: "

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 165
    :cond_47
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parser has left the initial scope of the tag that was being parsed on line number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getLineNumber()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_62
    :goto_62
    return-object v0
.end method

.method public readListFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;
    .registers 5

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    :cond_5
    :goto_5
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2e

    const/4 v2, 0x2

    if-eq v1, v2, :cond_10

    goto :goto_5

    .line 78
    :cond_10
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 79
    const-string/jumbo v2, "root"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_5

    .line 83
    :cond_1e
    const-string v2, "input_gesture_list"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/server/input/data/InputGesturePersistedData;->readInputGestureListFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    :cond_2e
    return-object v0
.end method

.method public final writeInputGestureListToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;)V
    .registers 6

    const/4 v0, 0x0

    .line 236
    const-string v1, "input_gesture_list"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 237
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputGestureData;

    .line 238
    invoke-virtual {p0, p1, v2}, Lcom/android/server/input/data/InputGesturePersistedData;->writeInputGestureToXml(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/hardware/input/InputGestureData;)V

    goto :goto_a

    .line 240
    :cond_1a
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final writeInputGestureToXml(Lcom/android/modules/utils/TypedXmlSerializer;Landroid/hardware/input/InputGestureData;)V
    .registers 8

    const/4 p0, 0x0

    .line 195
    const-string v0, "input_gesture"

    invoke-interface {p1, p0, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 197
    invoke-virtual {p2}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/input/InputGestureData$Action;->keyGestureType()I

    move-result v1

    .line 196
    const-string v2, "key_gesture_type"

    invoke-interface {p1, p0, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 199
    invoke-virtual {p2}, Landroid/hardware/input/InputGestureData;->getTrigger()Landroid/hardware/input/InputGestureData$Trigger;

    move-result-object v1

    .line 200
    instance-of v2, v1, Landroid/hardware/input/InputGestureData$KeyTrigger;

    if-eqz v2, :cond_39

    check-cast v1, Landroid/hardware/input/InputGestureData$KeyTrigger;

    .line 201
    const-string v2, "key_trigger"

    invoke-interface {p1, p0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 202
    const-string v3, "keycode"

    invoke-virtual {v1}, Landroid/hardware/input/InputGestureData$KeyTrigger;->getKeycode()I

    move-result v4

    invoke-interface {p1, p0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 203
    const-string/jumbo v3, "modifiers"

    .line 204
    invoke-virtual {v1}, Landroid/hardware/input/InputGestureData$KeyTrigger;->getModifierState()I

    move-result v1

    .line 203
    invoke-interface {p1, p0, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 205
    invoke-interface {p1, p0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_52

    .line 206
    :cond_39
    instance-of v2, v1, Landroid/hardware/input/InputGestureData$TouchpadTrigger;

    if-eqz v2, :cond_52

    check-cast v1, Landroid/hardware/input/InputGestureData$TouchpadTrigger;

    .line 207
    const-string/jumbo v2, "touchpad_trigger"

    invoke-interface {p1, p0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 208
    const-string/jumbo v3, "touchpad_gesture_type"

    .line 209
    invoke-virtual {v1}, Landroid/hardware/input/InputGestureData$TouchpadTrigger;->getTouchpadGestureType()I

    move-result v1

    .line 208
    invoke-interface {p1, p0, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 210
    invoke-interface {p1, p0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 213
    :cond_52
    :goto_52
    invoke-virtual {p2}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/input/InputGestureData$Action;->appLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object v1

    if-eqz v1, :cond_a6

    .line 214
    const-string v1, "app_launch_data"

    invoke-interface {p1, p0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 215
    invoke-virtual {p2}, Landroid/hardware/input/InputGestureData;->getAction()Landroid/hardware/input/InputGestureData$Action;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/input/InputGestureData$Action;->appLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object p2

    .line 216
    instance-of v2, p2, Landroid/hardware/input/AppLaunchData$RoleData;

    if-eqz v2, :cond_7a

    check-cast p2, Landroid/hardware/input/AppLaunchData$RoleData;

    .line 217
    const-string/jumbo v2, "role"

    invoke-virtual {p2}, Landroid/hardware/input/AppLaunchData$RoleData;->getRole()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p0, v2, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_a3

    .line 218
    :cond_7a
    instance-of v2, p2, Landroid/hardware/input/AppLaunchData$CategoryData;

    if-eqz v2, :cond_8a

    .line 219
    check-cast p2, Landroid/hardware/input/AppLaunchData$CategoryData;

    .line 220
    const-string v2, "category"

    .line 221
    invoke-virtual {p2}, Landroid/hardware/input/AppLaunchData$CategoryData;->getCategory()Ljava/lang/String;

    move-result-object p2

    .line 220
    invoke-interface {p1, p0, v2, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_a3

    .line 222
    :cond_8a
    instance-of v2, p2, Landroid/hardware/input/AppLaunchData$ComponentData;

    if-eqz v2, :cond_a3

    check-cast p2, Landroid/hardware/input/AppLaunchData$ComponentData;

    .line 223
    const-string/jumbo v2, "package_name"

    .line 224
    invoke-virtual {p2}, Landroid/hardware/input/AppLaunchData$ComponentData;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 223
    invoke-interface {p1, p0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 225
    const-string v2, "class_name"

    .line 226
    invoke-virtual {p2}, Landroid/hardware/input/AppLaunchData$ComponentData;->getClassName()Ljava/lang/String;

    move-result-object p2

    .line 225
    invoke-interface {p1, p0, v2, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 228
    :cond_a3
    :goto_a3
    invoke-interface {p1, p0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 231
    :cond_a6
    invoke-interface {p1, p0, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeListToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;)V
    .registers 5

    .line 100
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 101
    const-string/jumbo v0, "root"

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/data/InputGesturePersistedData;->writeInputGestureListToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/List;)V

    .line 103
    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 104
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    return-void
.end method
