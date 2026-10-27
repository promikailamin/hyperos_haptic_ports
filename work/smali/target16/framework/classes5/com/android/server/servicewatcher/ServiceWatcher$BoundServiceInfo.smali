.class public Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;
.super Ljava/lang/Object;
.source "ServiceWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/servicewatcher/ServiceWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BoundServiceInfo"
.end annotation


# static fields
.field private static final blacklist DEFAULT_FLAGS:I = 0x40000005


# instance fields
.field protected final blacklist mAction:Ljava/lang/String;

.field protected final blacklist mComponentName:Landroid/content/ComponentName;

.field private final blacklist mFlags:I

.field protected final blacklist mUid:I


# direct methods
.method protected constructor blacklist <init>(Ljava/lang/String;ILandroid/content/ComponentName;)V
    .registers 5

    .line 169
    const v0, 0x40000005    # 2.0000012f

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;-><init>(Ljava/lang/String;ILandroid/content/ComponentName;I)V

    .line 170
    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/String;ILandroid/content/ComponentName;I)V
    .registers 5

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mAction:Ljava/lang/String;

    .line 174
    iput p2, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mUid:I

    .line 175
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    .line 176
    iput p4, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mFlags:I

    .line 177
    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/String;Landroid/content/pm/ResolveInfo;)V
    .registers 4

    .line 164
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 165
    invoke-virtual {p2}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    .line 164
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;-><init>(Ljava/lang/String;ILandroid/content/ComponentName;)V

    .line 166
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 201
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 202
    return v0

    .line 204
    :cond_4
    instance-of v1, p1, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 205
    return v2

    .line 208
    :cond_a
    check-cast p1, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;

    .line 209
    iget v1, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mUid:I

    iget v3, p1, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mUid:I

    if-ne v1, v3, :cond_2d

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mAction:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mAction:Ljava/lang/String;

    .line 210
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    .line 211
    invoke-virtual {v1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget v1, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mFlags:I

    iget p1, p1, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mFlags:I

    if-ne v1, p1, :cond_2d

    goto :goto_2e

    :cond_2d
    move v0, v2

    .line 209
    :goto_2e
    return v0
.end method

.method public blacklist getAction()Ljava/lang/String;
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public blacklist getFlags()I
    .registers 2

    .line 196
    iget v0, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mFlags:I

    return v0
.end method

.method public blacklist getUserId()I
    .registers 2

    .line 191
    iget v0, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 5

    .line 217
    iget-object v0, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mAction:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    iget v3, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
