.class public final Landroid/media/quality/SoundProfile$Builder;
.super Ljava/lang/Object;
.source "SoundProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/quality/SoundProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mHandle:Landroid/media/quality/SoundProfileHandle;

.field private blacklist mId:Ljava/lang/String;

.field private blacklist mInputId:Ljava/lang/String;

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mParams:Landroid/os/PersistableBundle;

.field private blacklist mType:I


# direct methods
.method public constructor whitelist <init>(Landroid/media/quality/SoundProfile;)V
    .registers 3

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/quality/SoundProfile$Builder;->mType:I

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/quality/SoundProfile$Builder;->mId:Ljava/lang/String;

    .line 299
    invoke-virtual {p1}, Landroid/media/quality/SoundProfile;->getProfileType()I

    move-result v0

    iput v0, p0, Landroid/media/quality/SoundProfile$Builder;->mType:I

    .line 300
    invoke-virtual {p1}, Landroid/media/quality/SoundProfile;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/SoundProfile$Builder;->mName:Ljava/lang/String;

    .line 301
    invoke-virtual {p1}, Landroid/media/quality/SoundProfile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/SoundProfile$Builder;->mPackageName:Ljava/lang/String;

    .line 302
    invoke-virtual {p1}, Landroid/media/quality/SoundProfile;->getInputId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/SoundProfile$Builder;->mInputId:Ljava/lang/String;

    .line 303
    invoke-virtual {p1}, Landroid/media/quality/SoundProfile;->getParameters()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/quality/SoundProfile$Builder;->mParams:Landroid/os/PersistableBundle;

    .line 304
    invoke-virtual {p1}, Landroid/media/quality/SoundProfile;->getHandle()Landroid/media/quality/SoundProfileHandle;

    move-result-object p1

    iput-object p1, p0, Landroid/media/quality/SoundProfile$Builder;->mHandle:Landroid/media/quality/SoundProfileHandle;

    .line 305
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/quality/SoundProfile$Builder;->mType:I

    .line 291
    iput-object p1, p0, Landroid/media/quality/SoundProfile$Builder;->mName:Ljava/lang/String;

    .line 292
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/quality/SoundProfile;
    .registers 9

    .line 387
    new-instance v0, Landroid/media/quality/SoundProfile;

    iget-object v1, p0, Landroid/media/quality/SoundProfile$Builder;->mId:Ljava/lang/String;

    iget v2, p0, Landroid/media/quality/SoundProfile$Builder;->mType:I

    iget-object v3, p0, Landroid/media/quality/SoundProfile$Builder;->mName:Ljava/lang/String;

    iget-object v4, p0, Landroid/media/quality/SoundProfile$Builder;->mInputId:Ljava/lang/String;

    iget-object v5, p0, Landroid/media/quality/SoundProfile$Builder;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Landroid/media/quality/SoundProfile$Builder;->mParams:Landroid/os/PersistableBundle;

    iget-object v7, p0, Landroid/media/quality/SoundProfile$Builder;->mHandle:Landroid/media/quality/SoundProfileHandle;

    invoke-direct/range {v0 .. v7}, Landroid/media/quality/SoundProfile;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;Landroid/media/quality/SoundProfileHandle;)V

    .line 395
    return-object v0
.end method

.method public blacklist setHandle(Landroid/media/quality/SoundProfileHandle;)Landroid/media/quality/SoundProfile$Builder;
    .registers 2

    .line 377
    iput-object p1, p0, Landroid/media/quality/SoundProfile$Builder;->mHandle:Landroid/media/quality/SoundProfileHandle;

    .line 378
    return-object p0
.end method

.method public whitelist setInputId(Ljava/lang/String;)Landroid/media/quality/SoundProfile$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 341
    iput-object p1, p0, Landroid/media/quality/SoundProfile$Builder;->mInputId:Ljava/lang/String;

    .line 342
    return-object p0
.end method

.method public whitelist setPackageName(Ljava/lang/String;)Landroid/media/quality/SoundProfile$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 356
    iput-object p1, p0, Landroid/media/quality/SoundProfile$Builder;->mPackageName:Ljava/lang/String;

    .line 357
    return-object p0
.end method

.method public whitelist setParameters(Landroid/os/PersistableBundle;)Landroid/media/quality/SoundProfile$Builder;
    .registers 3

    .line 367
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0, p1}, Landroid/os/PersistableBundle;-><init>(Landroid/os/PersistableBundle;)V

    iput-object v0, p0, Landroid/media/quality/SoundProfile$Builder;->mParams:Landroid/os/PersistableBundle;

    .line 368
    return-object p0
.end method

.method public blacklist setProfileId(Ljava/lang/String;)Landroid/media/quality/SoundProfile$Builder;
    .registers 2

    .line 313
    iput-object p1, p0, Landroid/media/quality/SoundProfile$Builder;->mId:Ljava/lang/String;

    .line 314
    return-object p0
.end method

.method public whitelist setProfileType(I)Landroid/media/quality/SoundProfile$Builder;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 326
    iput p1, p0, Landroid/media/quality/SoundProfile$Builder;->mType:I

    .line 327
    return-object p0
.end method
