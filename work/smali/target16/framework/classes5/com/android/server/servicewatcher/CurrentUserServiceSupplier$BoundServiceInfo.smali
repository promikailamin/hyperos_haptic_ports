.class public Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;
.super Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;
.source "CurrentUserServiceSupplier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BoundServiceInfo"
.end annotation


# instance fields
.field private final blacklist mMetadata:Landroid/os/Bundle;

.field private final blacklist mVersion:I


# direct methods
.method protected constructor blacklist <init>(Ljava/lang/String;ILandroid/content/ComponentName;ILandroid/os/Bundle;)V
    .registers 6

    .line 135
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;-><init>(Ljava/lang/String;ILandroid/content/ComponentName;)V

    .line 137
    iput p4, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mVersion:I

    .line 138
    iput-object p5, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mMetadata:Landroid/os/Bundle;

    .line 139
    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/String;Landroid/content/pm/ResolveInfo;)V
    .registers 9

    .line 129
    invoke-static {p2}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->parseUid(Landroid/content/pm/ResolveInfo;)I

    move-result v2

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 130
    invoke-static {p2}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->parseVersion(Landroid/content/pm/ResolveInfo;)I

    move-result v4

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, p2, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 129
    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;-><init>(Ljava/lang/String;ILandroid/content/ComponentName;ILandroid/os/Bundle;)V

    .line 131
    return-void
.end method

.method private static blacklist parseUid(Landroid/content/pm/ResolveInfo;)I
    .registers 4

    .line 108
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 109
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 110
    if-eqz p0, :cond_1e

    const-string/jumbo v1, "serviceIsMultiuser"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 112
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    invoke-static {v2, p0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 114
    :cond_1e
    return v0
.end method

.method private static blacklist parseVersion(Landroid/content/pm/ResolveInfo;)I
    .registers 3

    .line 118
    nop

    .line 119
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_14

    .line 120
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v0, "serviceVersion"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 122
    :cond_14
    return v1
.end method


# virtual methods
.method public blacklist getMetadata()Landroid/os/Bundle;
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mMetadata:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getVersion()I
    .registers 2

    .line 142
    iget v0, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mVersion:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;->mVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
