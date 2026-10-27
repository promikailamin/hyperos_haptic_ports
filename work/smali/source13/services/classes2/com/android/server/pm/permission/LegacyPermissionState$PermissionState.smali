.class public final Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
.super Ljava/lang/Object;
.source "LegacyPermissionState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/LegacyPermissionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PermissionState"
.end annotation


# instance fields
.field private final mFlags:I

.field private final mGranted:Z

.field private final mName:Ljava/lang/String;

.field private final mRuntime:Z


# direct methods
.method private constructor <init>(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;)V
    .registers 3
    .param p1, "other"    # Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iget-object v0, p1, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mName:Ljava/lang/String;

    .line 293
    iget-boolean v0, p1, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mRuntime:Z

    iput-boolean v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mRuntime:Z

    .line 294
    iget-boolean v0, p1, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mGranted:Z

    iput-boolean v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mGranted:Z

    .line 295
    iget v0, p1, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mFlags:I

    iput v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mFlags:I

    .line 296
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;-><init>(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZI)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "runtime"    # Z
    .param p3, "granted"    # Z
    .param p4, "flags"    # I

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object p1, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mName:Ljava/lang/String;

    .line 286
    iput-boolean p2, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mRuntime:Z

    .line 287
    iput-boolean p3, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mGranted:Z

    .line 288
    iput p4, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mFlags:I

    .line 289
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "object"    # Ljava/lang/Object;

    .line 339
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 340
    return v0

    .line 342
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_34

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_34

    .line 345
    :cond_12
    move-object v2, p1

    check-cast v2, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 346
    .local v2, "that":Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    iget-boolean v3, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mRuntime:Z

    iget-boolean v4, v2, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mRuntime:Z

    if-ne v3, v4, :cond_32

    iget-boolean v3, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mGranted:Z

    iget-boolean v4, v2, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mGranted:Z

    if-ne v3, v4, :cond_32

    iget v3, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mFlags:I

    iget v4, v2, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mFlags:I

    if-ne v3, v4, :cond_32

    iget-object v3, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mName:Ljava/lang/String;

    .line 349
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_33

    :cond_32
    move v0, v1

    .line 346
    :goto_33
    return v0

    .line 343
    .end local v2    # "that":Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;
    :cond_34
    :goto_34
    return v1
.end method

.method public getFlags()I
    .registers 2

    .line 334
    iget v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mFlags:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 305
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 354
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mRuntime:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mGranted:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isGranted()Z
    .registers 2

    .line 324
    iget-boolean v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mGranted:Z

    return v0
.end method

.method public isRuntime()Z
    .registers 2

    .line 314
    iget-boolean v0, p0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->mRuntime:Z

    return v0
.end method
