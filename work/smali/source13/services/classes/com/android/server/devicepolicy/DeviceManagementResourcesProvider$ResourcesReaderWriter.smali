.class Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;
.super Ljava/lang/Object;
.source "DeviceManagementResourcesProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResourcesReaderWriter"
.end annotation


# instance fields
.field private final mFile:Ljava/io/File;

.field final synthetic this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)V
    .registers 2

    .line 283
    iput-object p1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    invoke-static {p1}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->-$$Nest$mgetResourcesFile(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->mFile:Ljava/io/File;

    .line 285
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;-><init>(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)V

    return-void
.end method

.method private readInner(Landroid/util/TypedXmlPullParser;ILjava/lang/String;)Z
    .registers 11
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "depth"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 433
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-le p2, v0, :cond_5

    .line 434
    return v1

    .line 436
    :cond_5
    const/4 v2, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_104

    :cond_e
    goto :goto_2d

    :sswitch_f
    const-string v0, "drawable-style-entry"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v4

    goto :goto_2e

    :sswitch_19
    const-string v0, "drawable-source-entry"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    goto :goto_2e

    :sswitch_23
    const-string/jumbo v3, "string-entry"

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_2e

    :goto_2d
    move v0, v2

    :goto_2e
    const-string v2, "drawable-style"

    const-string v3, "drawable-id"

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_112

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DevicePolicyManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    return v4

    .line 465
    :pswitch_4f
    const-string/jumbo v0, "source-id"

    invoke-interface {p1, v5, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 466
    .local v0, "id":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    invoke-static {v2}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->-$$Nest$fgetmUpdatedStrings(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;

    move-result-object v2

    invoke-static {p1}, Landroid/app/admin/ParcelableResource;->createFromXml(Landroid/util/TypedXmlPullParser;)Landroid/app/admin/ParcelableResource;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    goto/16 :goto_103

    .line 449
    .end local v0    # "id":Ljava/lang/String;
    :pswitch_65
    invoke-interface {p1, v5, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 450
    .restart local v0    # "id":Ljava/lang/String;
    const-string v3, "drawable-source"

    invoke-interface {p1, v5, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 452
    .local v3, "source":Ljava/lang/String;
    invoke-interface {p1, v5, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 454
    .local v2, "style":Ljava/lang/String;
    invoke-static {p1}, Landroid/app/admin/ParcelableResource;->createFromXml(Landroid/util/TypedXmlPullParser;)Landroid/app/admin/ParcelableResource;

    move-result-object v4

    .line 455
    .local v4, "resource":Landroid/app/admin/ParcelableResource;
    iget-object v5, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    invoke-static {v5}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->-$$Nest$fgetmUpdatedDrawablesForSource(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_91

    .line 456
    iget-object v5, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    invoke-static {v5}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->-$$Nest$fgetmUpdatedDrawablesForSource(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;

    move-result-object v5

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    :cond_91
    iget-object v5, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    invoke-static {v5}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->-$$Nest$fgetmUpdatedDrawablesForSource(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b7

    .line 459
    iget-object v5, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    invoke-static {v5}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->-$$Nest$fgetmUpdatedDrawablesForSource(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    :cond_b7
    iget-object v5, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    invoke-static {v5}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->-$$Nest$fgetmUpdatedDrawablesForSource(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    goto :goto_103

    .line 438
    .end local v0    # "id":Ljava/lang/String;
    .end local v2    # "style":Ljava/lang/String;
    .end local v3    # "source":Ljava/lang/String;
    .end local v4    # "resource":Landroid/app/admin/ParcelableResource;
    :pswitch_cd
    invoke-interface {p1, v5, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 439
    .restart local v0    # "id":Ljava/lang/String;
    invoke-interface {p1, v5, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 441
    .restart local v2    # "style":Ljava/lang/String;
    invoke-static {p1}, Landroid/app/admin/ParcelableResource;->createFromXml(Landroid/util/TypedXmlPullParser;)Landroid/app/admin/ParcelableResource;

    move-result-object v3

    .line 442
    .local v3, "resource":Landroid/app/admin/ParcelableResource;
    iget-object v4, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    invoke-static {v4}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->-$$Nest$fgetmUpdatedDrawablesForStyle(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f3

    .line 443
    iget-object v4, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    invoke-static {v4}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->-$$Nest$fgetmUpdatedDrawablesForStyle(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    :cond_f3
    iget-object v4, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    invoke-static {v4}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->-$$Nest$fgetmUpdatedDrawablesForStyle(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    nop

    .line 474
    .end local v0    # "id":Ljava/lang/String;
    .end local v2    # "style":Ljava/lang/String;
    .end local v3    # "resource":Landroid/app/admin/ParcelableResource;
    :goto_103
    return v1

    :sswitch_data_104
    .sparse-switch
        -0x3cdb944a -> :sswitch_23
        0x48f5d90f -> :sswitch_19
        0x53d206a7 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_112
    .packed-switch 0x0
        :pswitch_cd
        :pswitch_65
        :pswitch_4f
    .end packed-switch
.end method

.method private writeDrawablesForSourcesInner(Landroid/util/TypedXmlSerializer;)V
    .registers 12
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 394
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->-$$Nest$fgetmUpdatedDrawablesForSource(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->-$$Nest$fgetmUpdatedDrawablesForSource(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9b

    .line 396
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->-$$Nest$fgetmUpdatedDrawablesForSource(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 398
    .local v1, "drawableEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Landroid/app/admin/ParcelableResource;>;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 400
    .local v3, "sourceEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Landroid/app/admin/ParcelableResource;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_56
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_99

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 401
    .local v5, "styleEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/admin/ParcelableResource;>;"
    const/4 v6, 0x0

    const-string v7, "drawable-source-entry"

    invoke-interface {p1, v6, v7}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 402
    nop

    .line 403
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 402
    const-string v9, "drawable-id"

    invoke-interface {p1, v6, v9, v8}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 404
    nop

    .line 405
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 404
    const-string v9, "drawable-source"

    invoke-interface {p1, v6, v9, v8}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 406
    nop

    .line 407
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 406
    const-string v9, "drawable-style"

    invoke-interface {p1, v6, v9, v8}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 408
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/admin/ParcelableResource;

    invoke-virtual {v8, p1}, Landroid/app/admin/ParcelableResource;->writeToXmlFile(Landroid/util/TypedXmlSerializer;)V

    .line 409
    invoke-interface {p1, v6, v7}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 410
    .end local v5    # "styleEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/admin/ParcelableResource;>;"
    goto :goto_56

    .line 411
    .end local v3    # "sourceEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Landroid/app/admin/ParcelableResource;>;>;"
    :cond_99
    goto :goto_3c

    .line 412
    .end local v1    # "drawableEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Landroid/app/admin/ParcelableResource;>;>;>;"
    :cond_9a
    goto :goto_22

    .line 414
    :cond_9b
    return-void
.end method

.method private writeDrawablesForStylesInner(Landroid/util/TypedXmlSerializer;)V
    .registers 10
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->-$$Nest$fgetmUpdatedDrawablesForStyle(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->-$$Nest$fgetmUpdatedDrawablesForStyle(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_74

    .line 376
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->-$$Nest$fgetmUpdatedDrawablesForStyle(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_74

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 378
    .local v1, "drawableEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Landroid/app/admin/ParcelableResource;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_73

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 379
    .local v3, "styleEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/admin/ParcelableResource;>;"
    const/4 v4, 0x0

    const-string v5, "drawable-style-entry"

    invoke-interface {p1, v4, v5}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 380
    nop

    .line 381
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 380
    const-string v7, "drawable-id"

    invoke-interface {p1, v4, v7, v6}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 382
    nop

    .line 385
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 382
    const-string v7, "drawable-style"

    invoke-interface {p1, v4, v7, v6}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 386
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/ParcelableResource;

    invoke-virtual {v6, p1}, Landroid/app/admin/ParcelableResource;->writeToXmlFile(Landroid/util/TypedXmlSerializer;)V

    .line 387
    invoke-interface {p1, v4, v5}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 388
    .end local v3    # "styleEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/admin/ParcelableResource;>;"
    goto :goto_3c

    .line 389
    .end local v1    # "drawableEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Landroid/app/admin/ParcelableResource;>;>;"
    :cond_73
    goto :goto_22

    .line 391
    :cond_74
    return-void
.end method

.method private writeStringsInner(Landroid/util/TypedXmlSerializer;)V
    .registers 8
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->-$$Nest$fgetmUpdatedStrings(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->-$$Nest$fgetmUpdatedStrings(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4f

    .line 419
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->this$0:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->-$$Nest$fgetmUpdatedStrings(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 420
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/admin/ParcelableResource;>;"
    const/4 v2, 0x0

    const-string/jumbo v3, "string-entry"

    invoke-interface {p1, v2, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 421
    nop

    .line 424
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 421
    const-string/jumbo v5, "source-id"

    invoke-interface {p1, v2, v5, v4}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 425
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/ParcelableResource;

    invoke-virtual {v4, p1}, Landroid/app/admin/ParcelableResource;->writeToXmlFile(Landroid/util/TypedXmlSerializer;)V

    .line 426
    invoke-interface {p1, v2, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 427
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/admin/ParcelableResource;>;"
    goto :goto_22

    .line 429
    :cond_4f
    return-void
.end method


# virtual methods
.method readFromFileLocked()V
    .registers 10

    .line 321
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "DevicePolicyManagerService"

    if-nez v0, :cond_29

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->mFile:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " doesn\'t exist"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return-void

    .line 326
    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->mFile:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->mFile:Ljava/io/File;

    invoke-direct {v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 328
    .local v0, "f":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    .line 330
    .local v2, "input":Ljava/io/InputStream;
    :try_start_49
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    move-object v2, v3

    .line 331
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v3

    .line 334
    .local v3, "parser":Landroid/util/TypedXmlPullParser;
    const/4 v4, 0x0

    .line 335
    .local v4, "depth":I
    :cond_53
    :goto_53
    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v5

    move v6, v5

    .local v6, "type":I
    const/4 v7, 0x1

    if-eq v5, v7, :cond_9a

    .line 336
    packed-switch v6, :pswitch_data_ae

    goto :goto_99

    .line 341
    :pswitch_5f
    add-int/lit8 v4, v4, -0x1

    goto :goto_99

    .line 338
    :pswitch_62
    add-int/lit8 v4, v4, 0x1

    .line 339
    nop

    .line 347
    invoke-interface {v3}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 348
    .local v5, "tag":Ljava/lang/String;
    if-ne v4, v7, :cond_8e

    .line 349
    const-string/jumbo v7, "root"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_53

    .line 350
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid root tag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_49 .. :try_end_8a} :catch_9d
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_8a} :catch_9d
    .catchall {:try_start_49 .. :try_end_8a} :catchall_9b

    .line 363
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 351
    return-void

    .line 356
    :cond_8e
    :try_start_8e
    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->readInner(Landroid/util/TypedXmlPullParser;ILjava/lang/String;)Z

    move-result v7
    :try_end_92
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8e .. :try_end_92} :catch_9d
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_92} :catch_9d
    .catchall {:try_start_8e .. :try_end_92} :catchall_9b

    if-nez v7, :cond_98

    .line 363
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 357
    return-void

    .line 359
    .end local v5    # "tag":Ljava/lang/String;
    :cond_98
    goto :goto_53

    .line 344
    :goto_99
    goto :goto_53

    .line 363
    .end local v3    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v4    # "depth":I
    .end local v6    # "type":I
    :cond_9a
    goto :goto_a4

    :catchall_9b
    move-exception v1

    goto :goto_a9

    .line 360
    :catch_9d
    move-exception v3

    .line 361
    .local v3, "e":Ljava/lang/Exception;
    :try_start_9e
    const-string v4, "Error parsing resources file"

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a3
    .catchall {:try_start_9e .. :try_end_a3} :catchall_9b

    .line 363
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    :goto_a4
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 364
    nop

    .line 365
    return-void

    .line 363
    :goto_a9
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 364
    throw v1

    nop

    :pswitch_data_ae
    .packed-switch 0x2
        :pswitch_62
        :pswitch_5f
    .end packed-switch
.end method

.method writeInner(Landroid/util/TypedXmlSerializer;)V
    .registers 2
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 368
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->writeDrawablesForStylesInner(Landroid/util/TypedXmlSerializer;)V

    .line 369
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->writeDrawablesForSourcesInner(Landroid/util/TypedXmlSerializer;)V

    .line 370
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->writeStringsInner(Landroid/util/TypedXmlSerializer;)V

    .line 371
    return-void
.end method

.method writeToFileLocked()V
    .registers 8

    .line 288
    const-string/jumbo v0, "root"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Writing to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->mFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DevicePolicyManagerService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance v1, Landroid/util/AtomicFile;

    iget-object v3, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->mFile:Ljava/io/File;

    invoke-direct {v1, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 291
    .local v1, "f":Landroid/util/AtomicFile;
    const/4 v3, 0x0

    .line 293
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    :try_start_25
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v3, v4

    .line 294
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v4

    .line 297
    .local v4, "out":Landroid/util/TypedXmlSerializer;
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 298
    invoke-interface {v4, v6, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 301
    invoke-virtual {p0, v4}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->writeInner(Landroid/util/TypedXmlSerializer;)V

    .line 304
    invoke-interface {v4, v6, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 305
    invoke-interface {v4}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 306
    invoke-interface {v4}, Landroid/util/TypedXmlSerializer;->flush()V

    .line 309
    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_49} :catch_4b

    .line 310
    const/4 v0, 0x0

    .line 317
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .end local v4    # "out":Landroid/util/TypedXmlSerializer;
    .local v0, "outputStream":Ljava/io/FileOutputStream;
    goto :goto_57

    .line 312
    .end local v0    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    :catch_4b
    move-exception v0

    .line 313
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "Exception when writing"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    if-eqz v3, :cond_56

    .line 315
    invoke-virtual {v1, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 318
    .end local v0    # "e":Ljava/io/IOException;
    :cond_56
    move-object v0, v3

    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    .local v0, "outputStream":Ljava/io/FileOutputStream;
    :goto_57
    return-void
.end method
