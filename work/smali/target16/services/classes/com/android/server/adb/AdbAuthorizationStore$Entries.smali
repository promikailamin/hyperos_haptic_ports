.class public final Lcom/android/server/adb/AdbAuthorizationStore$Entries;
.super Ljava/lang/Record;
.source "AdbAuthorizationStore.java"


# annotations
.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {}
    }
    componentAnnotations = {
        {},
        {}
    }
    componentNames = {
        "keys",
        "trustedNetworks"
    }
    componentSignatures = {
        .subannotation Ldalvik/annotation/Signature;
            value = {
                "Ljava/util/Map<",
                "Ljava/lang/String;",
                "Ljava/lang/Long;",
                ">;"
            }
        .end subannotation,
        .subannotation Ldalvik/annotation/Signature;
            value = {
                "Ljava/util/List<",
                "Ljava/lang/String;",
                ">;"
            }
        .end subannotation
    }
    componentTypes = {
        Ljava/util/Map;,
        Ljava/util/List;
    }
.end annotation


# instance fields
.field public final keys:Ljava/util/Map;

.field public final trustedNetworks:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/android/server/adb/AdbAuthorizationStore$Entries;-><init>(Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/List;)V
    .registers 3

    .line 219
    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Lcom/android/server/adb/AdbAuthorizationStore$Entries;->keys:Ljava/util/Map;

    iput-object p2, p0, Lcom/android/server/adb/AdbAuthorizationStore$Entries;->trustedNetworks:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final synthetic $record$equals(Ljava/lang/Object;)Z
    .registers 4

    .line 0
    instance-of v0, p1, Lcom/android/server/adb/AdbAuthorizationStore$Entries;

    if-eqz v0, :cond_1c

    check-cast p1, Lcom/android/server/adb/AdbAuthorizationStore$Entries;

    iget-object v0, p0, Lcom/android/server/adb/AdbAuthorizationStore$Entries;->keys:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/adb/AdbAuthorizationStore$Entries;->keys:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lcom/android/server/adb/AdbAuthorizationStore$Entries;->trustedNetworks:Ljava/util/List;

    iget-object p1, p1, Lcom/android/server/adb/AdbAuthorizationStore$Entries;->trustedNetworks:Ljava/util/List;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic $record$getFieldsAsObjects()[Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/server/adb/AdbAuthorizationStore$Entries;->keys:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/server/adb/AdbAuthorizationStore$Entries;->trustedNetworks:Ljava/util/List;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p0, v1, v0

    return-object v1
.end method

.method public clear()V
    .registers 2

    .line 230
    iget-object v0, p0, Lcom/android/server/adb/AdbAuthorizationStore$Entries;->keys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 231
    iget-object p0, p0, Lcom/android/server/adb/AdbAuthorizationStore$Entries;->trustedNetworks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 219
    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbAuthorizationStore$Entries;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .registers 2

    .line 219
    iget-object v0, p0, Lcom/android/server/adb/AdbAuthorizationStore$Entries;->keys:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/server/adb/AdbAuthorizationStore$Entries;->trustedNetworks:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/android/server/accessibility/ForceInvertOverrideState$$ExternalSyntheticRecord0;->m(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .registers 2

    .line 226
    iget-object v0, p0, Lcom/android/server/adb/AdbAuthorizationStore$Entries;->keys:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/server/adb/AdbAuthorizationStore$Entries;->trustedNetworks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public keys()Ljava/util/Map;
    .registers 1

    .line 219
    iget-object p0, p0, Lcom/android/server/adb/AdbAuthorizationStore$Entries;->keys:Ljava/util/Map;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 219
    invoke-virtual {p0}, Lcom/android/server/adb/AdbAuthorizationStore$Entries;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Lcom/android/server/adb/AdbAuthorizationStore$Entries;

    const-string/jumbo v1, "keys;trustedNetworks"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$Digest$$ExternalSyntheticRecord1;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public trustedNetworks()Ljava/util/List;
    .registers 1

    .line 219
    iget-object p0, p0, Lcom/android/server/adb/AdbAuthorizationStore$Entries;->trustedNetworks:Ljava/util/List;

    return-object p0
.end method
