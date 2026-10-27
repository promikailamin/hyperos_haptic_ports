.class Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;
.super Ljava/lang/Object;
.source "LaunchParamsPersister.java"

# interfaces
.implements Lcom/android/server/wm/PersisterQueue$WriteQueueItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/LaunchParamsPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LaunchParamsWriteQueueItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/wm/PersisterQueue$WriteQueueItem<",
        "Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private mLaunchParams:Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/wm/LaunchParamsPersister;


# direct methods
.method static bridge synthetic -$$Nest$fgetmComponentName(Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;)Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method private constructor <init>(Lcom/android/server/wm/LaunchParamsPersister;ILandroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;)V
    .registers 5
    .param p2, "userId"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "launchParams"    # Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    .line 615
    iput-object p1, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->this$0:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 616
    iput p2, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mUserId:I

    .line 617
    iput-object p3, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mComponentName:Landroid/content/ComponentName;

    .line 618
    iput-object p4, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mLaunchParams:Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    .line 619
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/LaunchParamsPersister;ILandroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;-><init>(Lcom/android/server/wm/LaunchParamsPersister;ILandroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;)V

    return-void
.end method

.method private saveParamsToXml()[B
    .registers 6

    .line 623
    const-string v0, "launch_params"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 624
    .local v2, "os":Ljava/io/ByteArrayOutputStream;
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v3

    .line 626
    .local v3, "serializer":Landroid/util/TypedXmlSerializer;
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 627
    invoke-interface {v3, v1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 629
    iget-object v4, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mLaunchParams:Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    .line 631
    invoke-interface {v3, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 632
    invoke-interface {v3}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 633
    invoke-interface {v3}, Landroid/util/TypedXmlSerializer;->flush()V

    .line 635
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_29} :catch_2a

    return-object v0

    .line 636
    .end local v2    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "serializer":Landroid/util/TypedXmlSerializer;
    :catch_2a
    move-exception v0

    .line 637
    .local v0, "e":Ljava/io/IOException;
    return-object v1
.end method


# virtual methods
.method public matches(Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;)Z
    .registers 4
    .param p1, "item"    # Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;

    .line 670
    iget v0, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mUserId:I

    iget v1, p1, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mUserId:I

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mComponentName:Landroid/content/ComponentName;

    iget-object v1, p1, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public bridge synthetic matches(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;)Z
    .registers 2

    .line 607
    check-cast p1, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->matches(Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;)Z

    move-result p1

    return p1
.end method

.method public process()V
    .registers 10

    .line 643
    invoke-direct {p0}, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->saveParamsToXml()[B

    move-result-object v0

    .line 645
    .local v0, "data":[B
    iget-object v1, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->this$0:Lcom/android/server/wm/LaunchParamsPersister;

    iget v2, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/wm/LaunchParamsPersister;->-$$Nest$mgetLaunchParamFolder(Lcom/android/server/wm/LaunchParamsPersister;I)Ljava/io/File;

    move-result-object v1

    .line 646
    .local v1, "launchParamFolder":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    const-string v3, "LaunchParamsPersister"

    if-nez v2, :cond_33

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_33

    .line 647
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create folder for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    return-void

    .line 651
    :cond_33
    iget-object v2, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->this$0:Lcom/android/server/wm/LaunchParamsPersister;

    iget-object v4, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v2, v1, v4}, Lcom/android/server/wm/LaunchParamsPersister;->-$$Nest$mgetParamFile(Lcom/android/server/wm/LaunchParamsPersister;Ljava/io/File;Landroid/content/ComponentName;)Ljava/io/File;

    move-result-object v2

    .line 652
    .local v2, "launchParamFile":Ljava/io/File;
    new-instance v4, Landroid/util/AtomicFile;

    invoke-direct {v4, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 654
    .local v4, "atomicFile":Landroid/util/AtomicFile;
    const/4 v5, 0x0

    .line 656
    .local v5, "stream":Ljava/io/FileOutputStream;
    :try_start_41
    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v6

    move-object v5, v6

    .line 657
    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_49} :catch_4e

    .line 664
    nop

    .line 665
    invoke-virtual {v4, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 666
    return-void

    .line 658
    :catch_4e
    move-exception v6

    .line 659
    .local v6, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to write param file for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 660
    if-eqz v5, :cond_6c

    .line 661
    invoke-virtual {v4, v5}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 663
    :cond_6c
    return-void
.end method

.method public updateFrom(Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;)V
    .registers 3
    .param p1, "item"    # Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;

    .line 675
    iget-object v0, p1, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mLaunchParams:Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    iput-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mLaunchParams:Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    .line 676
    return-void
.end method

.method public bridge synthetic updateFrom(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;)V
    .registers 2

    .line 607
    check-cast p1, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->updateFrom(Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;)V

    return-void
.end method
