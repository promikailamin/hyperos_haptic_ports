.class public final Landroid/content/AttributionSource;
.super Ljava/lang/Object;
.source "AttributionSource.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/AttributionSource$Builder;,
        Landroid/content/AttributionSource$ScopedParcelState;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/AttributionSource;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.content.AttributionSource"

.field private static final blacklist TAG:Ljava/lang/String; = "AttributionSource"

.field private static final blacklist sDefaultToken:Landroid/os/Binder;


# instance fields
.field private final blacklist mAttributionSourceState:Landroid/content/AttributionSourceState;

.field private blacklist mNextCached:Landroid/content/AttributionSource;

.field private blacklist mRenouncedPermissionsCached:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAttributionSourceState(Landroid/content/AttributionSource;)Landroid/content/AttributionSourceState;
    .registers 1

    iget-object p0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsDefaultToken()Landroid/os/Binder;
    .registers 1

    sget-object v0, Landroid/content/AttributionSource;->sDefaultToken:Landroid/os/Binder;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 95
    new-instance v0, Landroid/os/Binder;

    const-string v1, "android.content.AttributionSource"

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/content/AttributionSource;->sDefaultToken:Landroid/os/Binder;

    .line 530
    new-instance v0, Landroid/content/AttributionSource$1;

    invoke-direct {v0}, Landroid/content/AttributionSource$1;-><init>()V

    sput-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;

    .line 106
    sget-object v0, Landroid/content/AttributionSource;->sDefaultToken:Landroid/os/Binder;

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 107
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 12
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "token"    # Landroid/os/IBinder;

    .line 113
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;[Ljava/lang/String;Landroid/content/AttributionSource;)V

    .line 115
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/AttributionSource;)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "next"    # Landroid/content/AttributionSource;

    .line 121
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;[Ljava/lang/String;Landroid/content/AttributionSource;)V

    .line 122
    return-void
.end method

.method constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;[Ljava/lang/String;Landroid/content/AttributionSource;)V
    .registers 11
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "token"    # Landroid/os/IBinder;
    .param p5, "renouncedPermissions"    # [Ljava/lang/String;
    .param p6, "next"    # Landroid/content/AttributionSource;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Landroid/content/AttributionSourceState;

    invoke-direct {v0}, Landroid/content/AttributionSourceState;-><init>()V

    iput-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    .line 148
    iput p1, v0, Landroid/content/AttributionSourceState;->uid:I

    .line 149
    iput-object p4, v0, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    .line 150
    iput-object p2, v0, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    .line 151
    iput-object p3, v0, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    .line 152
    iput-object p5, v0, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    .line 153
    const/4 v1, 0x0

    if-eqz p6, :cond_1f

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/AttributionSourceState;

    iget-object v3, p6, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    aput-object v3, v2, v1

    goto :goto_21

    .line 154
    :cond_1f
    new-array v2, v1, [Landroid/content/AttributionSourceState;

    :goto_21
    iput-object v2, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    .line 155
    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/Set;Landroid/content/AttributionSource;)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p5, "next"    # Landroid/content/AttributionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/AttributionSource;",
            ")V"
        }
    .end annotation

    .line 129
    .local p4, "renouncedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p4, :cond_c

    .line 130
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p4, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    move-object v5, v0

    .line 129
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/AttributionSource;)V

    .line 131
    return-void
.end method

.method constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/AttributionSource;)V
    .registers 13
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "renouncedPermissions"    # [Ljava/lang/String;
    .param p5, "next"    # Landroid/content/AttributionSource;

    .line 141
    sget-object v4, Landroid/content/AttributionSource;->sDefaultToken:Landroid/os/Binder;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;[Ljava/lang/String;Landroid/content/AttributionSource;)V

    .line 142
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/AttributionSource;Landroid/content/AttributionSource;)V
    .registers 10
    .param p1, "current"    # Landroid/content/AttributionSource;
    .param p2, "next"    # Landroid/content/AttributionSource;

    .line 135
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object v4

    iget-object v0, p1, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v5, v0, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    .line 135
    move-object v0, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;[Ljava/lang/String;Landroid/content/AttributionSource;)V

    .line 137
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/AttributionSourceState;)V
    .registers 2
    .param p1, "attributionSourceState"    # Landroid/content/AttributionSourceState;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    .line 179
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 158
    sget-object v0, Landroid/content/AttributionSourceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSourceState;

    invoke-direct {p0, v0}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    .line 160
    invoke-static {}, Landroid/os/Binder;->isDirectlyHandlingTransaction()Z

    move-result v0

    if-nez v0, :cond_58

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to verify calling UID #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget v1, v1, Landroid/content/AttributionSourceState;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PID #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget v1, v1, Landroid/content/AttributionSourceState;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " when not handling Binder transaction; clearing."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AttributionSource"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    const/4 v1, -0x1

    iput v1, v0, Landroid/content/AttributionSourceState;->pid:I

    .line 165
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput v1, v0, Landroid/content/AttributionSourceState;->uid:I

    .line 166
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    .line 167
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput-object v1, v0, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput-object v1, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    goto :goto_5b

    .line 172
    :cond_58
    invoke-direct {p0}, Landroid/content/AttributionSource;->enforceCallingUidAndPid()V

    .line 174
    :goto_5b
    return-void
.end method

.method private blacklist checkCallingPid()Z
    .registers 4

    .line 342
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 343
    .local v0, "callingPid":I
    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget v1, v1, Landroid/content/AttributionSourceState;->pid:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_13

    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget v1, v1, Landroid/content/AttributionSourceState;->pid:I

    if-eq v0, v1, :cond_13

    .line 344
    const/4 v1, 0x0

    return v1

    .line 346
    :cond_13
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist enforceCallingUidAndPid()V
    .registers 1

    .line 283
    invoke-virtual {p0}, Landroid/content/AttributionSource;->enforceCallingUid()V

    .line 284
    invoke-virtual {p0}, Landroid/content/AttributionSource;->enforceCallingPid()V

    .line 285
    return-void
.end method

.method public static whitelist myAttributionSource()Landroid/content/AttributionSource;
    .registers 5

    .line 228
    invoke-static {}, Landroid/app/ActivityThread;->currentAttributionSource()Landroid/content/AttributionSource;

    move-result-object v0

    .line 229
    .local v0, "globalSource":Landroid/content/AttributionSource;
    if-eqz v0, :cond_7

    .line 230
    return-object v0

    .line 233
    :cond_7
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 234
    .local v1, "uid":I
    if-nez v1, :cond_f

    .line 235
    const/16 v1, 0x3e8

    .line 238
    :cond_f
    :try_start_f
    new-instance v2, Landroid/content/AttributionSource$Builder;

    invoke-direct {v2, v1}, Landroid/content/AttributionSource$Builder;-><init>(I)V

    .line 239
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/AttributionSource$Builder;->setPackageName(Ljava/lang/String;)Landroid/content/AttributionSource$Builder;

    move-result-object v2

    .line 240
    invoke-virtual {v2}, Landroid/content/AttributionSource$Builder;->build()Landroid/content/AttributionSource;

    move-result-object v2
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_27} :catch_28

    .line 238
    return-object v2

    .line 241
    :catch_28
    move-exception v2

    .line 244
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Failed to resolve AttributionSource"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public blacklist asScopedParcelState()Landroid/content/AttributionSource$ScopedParcelState;
    .registers 2

    .line 206
    new-instance v0, Landroid/content/AttributionSource$ScopedParcelState;

    invoke-direct {v0, p0}, Landroid/content/AttributionSource$ScopedParcelState;-><init>(Landroid/content/AttributionSource;)V

    return-object v0
.end method

.method public blacklist asState()Landroid/content/AttributionSourceState;
    .registers 2

    .line 201
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    return-object v0
.end method

.method public whitelist checkCallingUid()Z
    .registers 3

    .line 312
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 313
    .local v0, "callingUid":I
    if-eqz v0, :cond_12

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_12

    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget v1, v1, Landroid/content/AttributionSourceState;->uid:I

    if-eq v0, v1, :cond_12

    .line 316
    const/4 v1, 0x0

    return v1

    .line 319
    :cond_12
    const/4 v1, 0x1

    return v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 528
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enforceCallingPid()V
    .registers 4

    .line 330
    invoke-direct {p0}, Landroid/content/AttributionSource;->checkCallingPid()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 334
    return-void

    .line 331
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t match source pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget v2, v2, Landroid/content/AttributionSourceState;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist enforceCallingUid()V
    .registers 4

    .line 296
    invoke-virtual {p0}, Landroid/content/AttributionSource;->checkCallingUid()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 301
    return-void

    .line 297
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t match source uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget v2, v2, Landroid/content/AttributionSourceState;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 495
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 496
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_68

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_68

    .line 497
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/content/AttributionSource;

    .line 498
    .local v2, "that":Landroid/content/AttributionSource;
    iget-object v3, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget v3, v3, Landroid/content/AttributionSourceState;->uid:I

    iget-object v4, v2, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget v4, v4, Landroid/content/AttributionSourceState;->uid:I

    if-ne v3, v4, :cond_66

    iget-object v3, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v3, v3, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v4, v4, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    .line 499
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    iget-object v3, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v3, v3, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v4, v4, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    .line 501
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    iget-object v3, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v3, v3, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    iget-object v4, v2, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v4, v4, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    .line 503
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    iget-object v3, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v3, v3, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    iget-object v4, v2, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v4, v4, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    .line 505
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 507
    invoke-virtual {p0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    goto :goto_67

    :cond_66
    move v0, v1

    .line 498
    :goto_67
    return v0

    .line 496
    .end local v2    # "that":Landroid/content/AttributionSource;
    :cond_68
    :goto_68
    return v1
.end method

.method public whitelist getAttributionTag()Ljava/lang/String;
    .registers 2

    .line 470
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getNext()Landroid/content/AttributionSource;
    .registers 4

    .line 486
    iget-object v0, p0, Landroid/content/AttributionSource;->mNextCached:Landroid/content/AttributionSource;

    if-nez v0, :cond_1f

    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    array-length v0, v0

    if-lez v0, :cond_1f

    .line 488
    new-instance v0, Landroid/content/AttributionSource;

    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v1, v1, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    iput-object v0, p0, Landroid/content/AttributionSource;->mNextCached:Landroid/content/AttributionSource;

    .line 490
    :cond_1f
    iget-object v0, p0, Landroid/content/AttributionSource;->mNextCached:Landroid/content/AttributionSource;

    return-object v0
.end method

.method public blacklist getNextAttributionTag()Ljava/lang/String;
    .registers 3

    .line 398
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    array-length v0, v0

    if-lez v0, :cond_17

    .line 400
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    return-object v0

    .line 402
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNextPackageName()Ljava/lang/String;
    .registers 3

    .line 384
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    array-length v0, v0

    if-lez v0, :cond_17

    .line 386
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    return-object v0

    .line 388
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNextToken()Landroid/os/IBinder;
    .registers 3

    .line 412
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    array-length v0, v0

    if-lez v0, :cond_17

    .line 414
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    return-object v0

    .line 416
    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getNextUid()I
    .registers 3

    .line 371
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    array-length v0, v0

    if-lez v0, :cond_17

    .line 373
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, Landroid/content/AttributionSourceState;->uid:I

    return v0

    .line 375
    :cond_17
    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 463
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRenouncedPermissions()Ljava/util/Set;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 441
    iget-object v0, p0, Landroid/content/AttributionSource;->mRenouncedPermissionsCached:Ljava/util/Set;

    if-nez v0, :cond_1c

    .line 442
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 443
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v1, v1, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/content/AttributionSource;->mRenouncedPermissionsCached:Ljava/util/Set;

    goto :goto_1c

    .line 446
    :cond_16
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/content/AttributionSource;->mRenouncedPermissionsCached:Ljava/util/Set;

    .line 449
    :cond_1c
    :goto_1c
    iget-object v0, p0, Landroid/content/AttributionSource;->mRenouncedPermissionsCached:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getToken()Landroid/os/IBinder;
    .registers 2

    .line 479
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist getUid()I
    .registers 2

    .line 456
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget v0, v0, Landroid/content/AttributionSourceState;->uid:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 512
    const/4 v0, 0x1

    .line 513
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget v2, v2, Landroid/content/AttributionSourceState;->uid:I

    add-int/2addr v1, v2

    .line 514
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v2, v2, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 515
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v2, v2, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 516
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v2, v2, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 517
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v2, v2, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 518
    .end local v0    # "_hash":I
    .restart local v1    # "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 519
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method

.method public whitelist isTrusted(Landroid/content/Context;)Z
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 427
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    if-eqz v0, :cond_16

    const-class v0, Landroid/permission/PermissionManager;

    .line 428
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/PermissionManager;

    .line 429
    invoke-virtual {v0, p0}, Landroid/permission/PermissionManager;->isRegisteredAttributionSource(Landroid/content/AttributionSource;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 427
    :goto_17
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 351
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_6c

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AttributionSource { uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget v1, v1, Landroid/content/AttributionSourceState;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v1, v1, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", attributionTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v1, v1, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v1, v1, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", next = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 358
    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v1, v1, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    if-eqz v1, :cond_5c

    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v1, v1, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    array-length v1, v1

    if-lez v1, :cond_5c

    .line 359
    iget-object v1, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v1, v1, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    goto :goto_5d

    :cond_5c
    const/4 v1, 0x0

    :goto_5d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    return-object v0

    .line 362
    :cond_6c
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist withNextAttributionSource(Landroid/content/AttributionSource;)Landroid/content/AttributionSource;
    .registers 9
    .param p1, "next"    # Landroid/content/AttributionSource;

    .line 183
    new-instance v6, Landroid/content/AttributionSource;

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v4, v0, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/AttributionSource;)V

    return-object v6
.end method

.method public blacklist withPackageName(Ljava/lang/String;)Landroid/content/AttributionSource;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .line 189
    new-instance v6, Landroid/content/AttributionSource;

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v4, v0, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    .line 190
    invoke-virtual {p0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v5

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/AttributionSource;)V

    .line 189
    return-object v6
.end method

.method public blacklist withToken(Landroid/os/Binder;)Landroid/content/AttributionSource;
    .registers 10
    .param p1, "token"    # Landroid/os/Binder;

    .line 195
    new-instance v7, Landroid/content/AttributionSource;

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v5, v0, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    .line 196
    invoke-virtual {p0}, Landroid/content/AttributionSource;->getNext()Landroid/content/AttributionSource;

    move-result-object v6

    move-object v0, v7

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Landroid/content/AttributionSource;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;[Ljava/lang/String;Landroid/content/AttributionSource;)V

    .line 195
    return-object v7
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 524
    iget-object v0, p0, Landroid/content/AttributionSource;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    invoke-virtual {v0, p1, p2}, Landroid/content/AttributionSourceState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 525
    return-void
.end method
