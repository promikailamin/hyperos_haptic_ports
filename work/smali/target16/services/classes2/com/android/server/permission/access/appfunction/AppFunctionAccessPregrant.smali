.class public final Lcom/android/server/permission/access/appfunction/AppFunctionAccessPregrant;
.super Ljava/lang/Object;
.source "AppFunctionAccessPregrant.kt"


# static fields
.field public static final Companion:Lcom/android/server/permission/access/appfunction/AppFunctionAccessPregrant$Companion;


# instance fields
.field public final pregrantFiles$delegate:Lcom/android/server/permission/jarjar/kotlin/Lazy;

.field public final service:Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;


# direct methods
.method public static synthetic $r8$lambda$Y4QhJJtuYESsN2d06QDVLATXcTw()Ljava/util/List;
    .registers 1

    .line 0
    invoke-static {}, Lcom/android/server/permission/access/appfunction/AppFunctionAccessPregrant;->pregrantFiles_delegate$lambda$5()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Lcom/android/server/permission/access/appfunction/AppFunctionAccessPregrant$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/permission/access/appfunction/AppFunctionAccessPregrant$Companion;-><init>(Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/server/permission/access/appfunction/AppFunctionAccessPregrant;->Companion:Lcom/android/server/permission/access/appfunction/AppFunctionAccessPregrant$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/appfunction/AppFunctionAccessPregrant;->service:Lcom/android/server/permission/access/appfunction/AppFunctionAccessService;

    .line 124
    sget-object p1, Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;->NONE:Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;

    new-instance v0, Lcom/android/server/permission/access/appfunction/AppFunctionAccessPregrant$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/permission/access/appfunction/AppFunctionAccessPregrant$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Lcom/android/server/permission/jarjar/kotlin/LazyKt__LazyJVMKt;->lazy(Lcom/android/server/permission/jarjar/kotlin/LazyThreadSafetyMode;Lcom/android/server/permission/jarjar/kotlin/jvm/functions/Function0;)Lcom/android/server/permission/jarjar/kotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/permission/access/appfunction/AppFunctionAccessPregrant;->pregrantFiles$delegate:Lcom/android/server/permission/jarjar/kotlin/Lazy;

    return-void
.end method

.method public static final pregrantFiles_delegate$lambda$5()Ljava/util/List;
    .registers 4

    .line 125
    invoke-static {}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt__CollectionsJVMKt;->createListBuilder()Ljava/util/List;

    move-result-object v0

    .line 126
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "etc/app-function-access-pregrants"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 128
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 130
    :cond_22
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 132
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 134
    :cond_3e
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getOdmDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 136
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 138
    :cond_5a
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_76

    .line 140
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 142
    :cond_76
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getSystemExtDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_92

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_92

    .line 144
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 146
    :cond_92
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_ae

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_ae

    .line 148
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt__MutableCollectionsKt;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 125
    :cond_ae
    invoke-static {v0}, Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt__CollectionsJVMKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
