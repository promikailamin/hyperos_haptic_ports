.class public Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
.super Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;
.source "ParsedActivityImpl.java"

# interfaces
.implements Lcom/android/server/pm/pkg/component/ParsedActivity;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/server/pm/pkg/component/ParsedActivityImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private colorMode:I

.field private configChanges:I

.field private documentLaunchMode:I

.field private launchMode:I

.field private lockTaskLaunchMode:I

.field private mKnownActivityEmbeddingCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private maxAspectRatio:F

.field private maxRecents:I

.field private minAspectRatio:F

.field private parentActivityName:Ljava/lang/String;

.field private permission:Ljava/lang/String;

.field private persistableMode:I

.field private privateFlags:I

.field private requestedVrComponent:Ljava/lang/String;

.field private resizeMode:I

.field private rotationAnimation:I

.field private screenOrientation:I

.field private softInputMode:I

.field private supportsSizeChanges:Z

.field private targetActivity:Ljava/lang/String;

.field private taskAffinity:Ljava/lang/String;

.field private theme:I

.field private uiOptions:I

.field private windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 356
    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl$1;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 321
    invoke-direct {p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;-><init>()V

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    .line 84
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    .line 86
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    .line 87
    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    .line 93
    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    .line 322
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;IIIIIIIIIFFZLjava/lang/String;IILandroid/content/pm/ActivityInfo$WindowLayout;)V
    .registers 41
    .param p1, "theme"    # I
    .param p2, "uiOptions"    # I
    .param p3, "targetActivity"    # Ljava/lang/String;
    .param p4, "parentActivityName"    # Ljava/lang/String;
    .param p5, "taskAffinity"    # Ljava/lang/String;
    .param p6, "privateFlags"    # I
    .param p7, "permission"    # Ljava/lang/String;
    .param p9, "launchMode"    # I
    .param p10, "documentLaunchMode"    # I
    .param p11, "maxRecents"    # I
    .param p12, "configChanges"    # I
    .param p13, "softInputMode"    # I
    .param p14, "persistableMode"    # I
    .param p15, "lockTaskLaunchMode"    # I
    .param p16, "screenOrientation"    # I
    .param p17, "resizeMode"    # I
    .param p18, "maxAspectRatio"    # F
    .param p19, "minAspectRatio"    # F
    .param p20, "supportsSizeChanges"    # Z
    .param p21, "requestedVrComponent"    # Ljava/lang/String;
    .param p22, "rotationAnimation"    # I
    .param p23, "colorMode"    # I
    .param p24, "windowLayout"    # Landroid/content/pm/ActivityInfo$WindowLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IIIIIIIIIFFZ",
            "Ljava/lang/String;",
            "II",
            "Landroid/content/pm/ActivityInfo$WindowLayout;",
            ")V"
        }
    .end annotation

    .line 409
    .local p8, "knownActivityEmbeddingCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;-><init>()V

    .line 83
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    .line 84
    const/4 v2, 0x2

    iput v2, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    .line 86
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    .line 87
    iput v2, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    .line 93
    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    .line 410
    move/from16 v1, p1

    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->theme:I

    .line 411
    move/from16 v2, p2

    iput v2, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->uiOptions:I

    .line 412
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->targetActivity:Ljava/lang/String;

    .line 413
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->parentActivityName:Ljava/lang/String;

    .line 414
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->taskAffinity:Ljava/lang/String;

    .line 415
    move/from16 v6, p6

    iput v6, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->privateFlags:I

    .line 416
    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->permission:Ljava/lang/String;

    .line 417
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 418
    move/from16 v9, p9

    iput v9, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->launchMode:I

    .line 419
    move/from16 v10, p10

    iput v10, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->documentLaunchMode:I

    .line 420
    move/from16 v11, p11

    iput v11, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxRecents:I

    .line 421
    move/from16 v12, p12

    iput v12, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->configChanges:I

    .line 422
    move/from16 v13, p13

    iput v13, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->softInputMode:I

    .line 423
    move/from16 v14, p14

    iput v14, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->persistableMode:I

    .line 424
    move/from16 v15, p15

    iput v15, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->lockTaskLaunchMode:I

    .line 425
    move/from16 v1, p16

    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    .line 426
    move/from16 v1, p17

    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    .line 427
    move/from16 v1, p18

    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    .line 428
    move/from16 v1, p19

    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    .line 429
    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->supportsSizeChanges:Z

    .line 430
    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->requestedVrComponent:Ljava/lang/String;

    .line 431
    move/from16 v1, p22

    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    .line 432
    move/from16 v1, p23

    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->colorMode:I

    .line 433
    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 436
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 325
    invoke-direct {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;-><init>(Landroid/os/Parcel;)V

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    .line 84
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    .line 86
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    .line 87
    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    .line 93
    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->theme:I

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->uiOptions:I

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->targetActivity:Ljava/lang/String;

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->parentActivityName:Ljava/lang/String;

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->taskAffinity:Ljava/lang/String;

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->privateFlags:I

    .line 332
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->permission:Ljava/lang/String;

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->launchMode:I

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->documentLaunchMode:I

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxRecents:I

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->configChanges:I

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->softInputMode:I

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->persistableMode:I

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->lockTaskLaunchMode:I

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    .line 342
    const-class v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    .line 343
    const-class v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->supportsSizeChanges:Z

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->requestedVrComponent:Ljava/lang/String;

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->colorMode:I

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setMetaData(Landroid/os/Bundle;)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 350
    new-instance v0, Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-direct {v0, p1}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 352
    :cond_c3
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 353
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/pkg/component/ParsedActivityImpl;)V
    .registers 4
    .param p1, "other"    # Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;-><init>(Lcom/android/server/pm/pkg/component/ParsedMainComponent;)V

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    .line 84
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    .line 86
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    .line 87
    iput v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    .line 93
    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    .line 101
    iget v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->theme:I

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->theme:I

    .line 102
    iget v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->uiOptions:I

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->uiOptions:I

    .line 103
    iget-object v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->targetActivity:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->targetActivity:Ljava/lang/String;

    .line 104
    iget-object v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->parentActivityName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->parentActivityName:Ljava/lang/String;

    .line 105
    iget-object v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->taskAffinity:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->taskAffinity:Ljava/lang/String;

    .line 106
    iget v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->privateFlags:I

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->privateFlags:I

    .line 107
    iget-object v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->permission:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->permission:Ljava/lang/String;

    .line 108
    iget v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->launchMode:I

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->launchMode:I

    .line 109
    iget v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->documentLaunchMode:I

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->documentLaunchMode:I

    .line 110
    iget v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxRecents:I

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxRecents:I

    .line 111
    iget v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->configChanges:I

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->configChanges:I

    .line 112
    iget v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->softInputMode:I

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->softInputMode:I

    .line 113
    iget v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->persistableMode:I

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->persistableMode:I

    .line 114
    iget v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->lockTaskLaunchMode:I

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->lockTaskLaunchMode:I

    .line 115
    iget v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    .line 116
    iget v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    .line 117
    iget v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    .line 118
    iget v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    .line 119
    iget-boolean v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->supportsSizeChanges:Z

    iput-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->supportsSizeChanges:Z

    .line 120
    iget-object v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->requestedVrComponent:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->requestedVrComponent:Ljava/lang/String;

    .line 121
    iget v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    .line 122
    iget v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->colorMode:I

    iput v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->colorMode:I

    .line 123
    iget-object v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 124
    iget-object v0, p1, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 125
    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 685
    return-void
.end method

.method static makeAlias(Ljava/lang/String;Lcom/android/server/pm/pkg/component/ParsedActivity;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 4
    .param p0, "targetActivityName"    # Ljava/lang/String;
    .param p1, "target"    # Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 162
    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;-><init>()V

    .line 163
    .local v0, "alias":Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setPackageName(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setTargetActivity(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    .line 165
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getConfigChanges()I

    move-result v1

    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->configChanges:I

    .line 166
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 167
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getPrivateFlags()I

    move-result v1

    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->privateFlags:I

    .line 168
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setIcon(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 169
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getLogo()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setLogo(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 170
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getBanner()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setBanner(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 171
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getLabelRes()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setLabelRes(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 172
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setNonLocalizedLabel(Ljava/lang/CharSequence;)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 173
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getLaunchMode()I

    move-result v1

    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->launchMode:I

    .line 174
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getLockTaskLaunchMode()I

    move-result v1

    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->lockTaskLaunchMode:I

    .line 175
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getDocumentLaunchMode()I

    move-result v1

    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->documentLaunchMode:I

    .line 176
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getDescriptionRes()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setDescriptionRes(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 177
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getScreenOrientation()I

    move-result v1

    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    .line 178
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getTaskAffinity()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->taskAffinity:Ljava/lang/String;

    .line 179
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getTheme()I

    move-result v1

    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->theme:I

    .line 180
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getSoftInputMode()I

    move-result v1

    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->softInputMode:I

    .line 181
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getUiOptions()I

    move-result v1

    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->uiOptions:I

    .line 182
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getParentActivityName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->parentActivityName:Ljava/lang/String;

    .line 183
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getMaxRecents()I

    move-result v1

    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxRecents:I

    .line 184
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 185
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getResizeMode()I

    move-result v1

    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    .line 186
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getMaxAspectRatio()F

    move-result v1

    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    .line 187
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getMinAspectRatio()F

    move-result v1

    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    .line 188
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->isSupportsSizeChanges()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->supportsSizeChanges:Z

    .line 189
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getRequestedVrComponent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->requestedVrComponent:Ljava/lang/String;

    .line 190
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->isDirectBootAware()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setDirectBootAware(Z)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    .line 191
    invoke-interface {p1}, Lcom/android/server/pm/pkg/component/ParsedActivity;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setProcessName(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    .line 192
    return-object v0
.end method

.method static makeAppDetailsActivity(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 9
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uiOptions"    # I
    .param p3, "taskAffinity"    # Ljava/lang/String;
    .param p4, "hardwareAccelerated"    # Z

    .line 134
    new-instance v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    invoke-direct {v0}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;-><init>()V

    .line 135
    .local v0, "activity":Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    invoke-virtual {v0, p0}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setPackageName(Ljava/lang/String;)V

    .line 136
    const v1, 0x1030055

    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->theme:I

    .line 137
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setExported(Z)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    .line 138
    sget-object v2, Landroid/content/pm/PackageManager;->APP_DETAILS_ACTIVITY_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setName(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 139
    invoke-virtual {v0, p1}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setProcessName(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    .line 140
    iput p2, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->uiOptions:I

    .line 141
    iput-object p3, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->taskAffinity:Ljava/lang/String;

    .line 142
    const/4 v2, 0x0

    iput v2, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->launchMode:I

    .line 143
    iput v2, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->documentLaunchMode:I

    .line 144
    invoke-static {}, Landroid/app/ActivityTaskManager;->getDefaultAppRecentsLimitStatic()I

    move-result v3

    iput v3, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxRecents:I

    .line 145
    invoke-static {v2, v2}, Lcom/android/server/pm/pkg/component/ParsedActivityUtils;->getActivityConfigChanges(II)I

    move-result v3

    iput v3, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->configChanges:I

    .line 146
    iput v2, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->softInputMode:I

    .line 147
    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->persistableMode:I

    .line 148
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    .line 149
    const/4 v3, 0x4

    iput v3, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    .line 150
    iput v2, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->lockTaskLaunchMode:I

    .line 151
    invoke-virtual {v0, v2}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setDirectBootAware(Z)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    .line 152
    iput v1, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    .line 153
    iput v2, v0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->colorMode:I

    .line 154
    if-eqz p4, :cond_4c

    .line 155
    invoke-virtual {v0}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->getFlags()I

    move-result v1

    or-int/lit16 v1, v1, 0x200

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    .line 157
    :cond_4c
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public getColorMode()I
    .registers 2

    .line 545
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->colorMode:I

    return v0
.end method

.method public getConfigChanges()I
    .registers 2

    .line 490
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->configChanges:I

    return v0
.end method

.method public getDocumentLaunchMode()I
    .registers 2

    .line 480
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->documentLaunchMode:I

    return v0
.end method

.method public getKnownActivityEmbeddingCerts()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_a

    .line 255
    :cond_9
    nop

    .line 254
    :goto_a
    return-object v0
.end method

.method public getLaunchMode()I
    .registers 2

    .line 475
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->launchMode:I

    return v0
.end method

.method public getLockTaskLaunchMode()I
    .registers 2

    .line 505
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->lockTaskLaunchMode:I

    return v0
.end method

.method public getMaxAspectRatio()F
    .registers 2

    .line 520
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    return v0
.end method

.method public getMaxRecents()I
    .registers 2

    .line 485
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxRecents:I

    return v0
.end method

.method public getMinAspectRatio()F
    .registers 2

    .line 525
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    return v0
.end method

.method public getParentActivityName()Ljava/lang/String;
    .registers 2

    .line 455
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->parentActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public getPermission()Ljava/lang/String;
    .registers 2

    .line 470
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->permission:Ljava/lang/String;

    return-object v0
.end method

.method public getPersistableMode()I
    .registers 2

    .line 500
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->persistableMode:I

    return v0
.end method

.method public getPrivateFlags()I
    .registers 2

    .line 465
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->privateFlags:I

    return v0
.end method

.method public getRequestedVrComponent()Ljava/lang/String;
    .registers 2

    .line 535
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->requestedVrComponent:Ljava/lang/String;

    return-object v0
.end method

.method public getResizeMode()I
    .registers 2

    .line 515
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    return v0
.end method

.method public getRotationAnimation()I
    .registers 2

    .line 540
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    return v0
.end method

.method public getScreenOrientation()I
    .registers 2

    .line 510
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    return v0
.end method

.method public getSoftInputMode()I
    .registers 2

    .line 495
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->softInputMode:I

    return v0
.end method

.method public getTargetActivity()Ljava/lang/String;
    .registers 2

    .line 450
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->targetActivity:Ljava/lang/String;

    return-object v0
.end method

.method public getTaskAffinity()Ljava/lang/String;
    .registers 2

    .line 460
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->taskAffinity:Ljava/lang/String;

    return-object v0
.end method

.method public getTheme()I
    .registers 2

    .line 440
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->theme:I

    return v0
.end method

.method public getUiOptions()I
    .registers 2

    .line 445
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->uiOptions:I

    return v0
.end method

.method public getWindowLayout()Landroid/content/pm/ActivityInfo$WindowLayout;
    .registers 2

    .line 550
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    return-object v0
.end method

.method public isSupportsSizeChanges()Z
    .registers 2

    .line 530
    iget-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->supportsSizeChanges:Z

    return v0
.end method

.method public setColorMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # I

    .line 669
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->colorMode:I

    .line 670
    return-object p0
.end method

.method public setConfigChanges(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # I

    .line 603
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->configChanges:I

    .line 604
    return-object p0
.end method

.method public setDocumentLaunchMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # I

    .line 591
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->documentLaunchMode:I

    .line 592
    return-object p0
.end method

.method public setKnownActivityEmbeddingCerts(Ljava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 264
    .local p1, "knownActivityEmbeddingCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    .line 265
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 266
    .local v1, "knownCert":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 267
    .end local v1    # "knownCert":Ljava/lang/String;
    goto :goto_b

    .line 268
    :cond_23
    return-void
.end method

.method public setLaunchMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # I

    .line 585
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->launchMode:I

    .line 586
    return-object p0
.end method

.method public setLockTaskLaunchMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # I

    .line 621
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->lockTaskLaunchMode:I

    .line 622
    return-object p0
.end method

.method public setMaxAspectRatio(F)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # F

    .line 639
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    .line 640
    return-object p0
.end method

.method public setMaxAspectRatio(IF)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 4
    .param p1, "resizeMode"    # I
    .param p2, "maxAspectRatio"    # F

    .line 209
    const/4 v0, 0x2

    if-eq p1, v0, :cond_16

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    goto :goto_16

    .line 215
    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_13

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_13

    .line 217
    return-object p0

    .line 220
    :cond_13
    iput p2, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    .line 221
    return-object p0

    .line 212
    :cond_16
    :goto_16
    return-object p0
.end method

.method public setMaxRecents(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # I

    .line 597
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxRecents:I

    .line 598
    return-object p0
.end method

.method public setMinAspectRatio(F)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # F

    .line 645
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    .line 646
    return-object p0
.end method

.method public setMinAspectRatio(IF)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 4
    .param p1, "resizeMode"    # I
    .param p2, "minAspectRatio"    # F

    .line 225
    const/4 v0, 0x2

    if-eq p1, v0, :cond_16

    const/4 v0, 0x1

    if-ne p1, v0, :cond_7

    goto :goto_16

    .line 231
    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_13

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_13

    .line 233
    return-object p0

    .line 236
    :cond_13
    iput p2, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    .line 237
    return-object p0

    .line 228
    :cond_16
    :goto_16
    return-object p0
.end method

.method public setParentActivityName(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 567
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->parentActivityName:Ljava/lang/String;

    .line 568
    return-object p0
.end method

.method public setPermission(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 247
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_c
    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->permission:Ljava/lang/String;

    .line 248
    return-object p0
.end method

.method public setPersistableMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # I

    .line 615
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->persistableMode:I

    .line 616
    return-object p0
.end method

.method public setPrivateFlags(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # I

    .line 579
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->privateFlags:I

    .line 580
    return-object p0
.end method

.method public setRequestedVrComponent(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 657
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->requestedVrComponent:Ljava/lang/String;

    .line 658
    return-object p0
.end method

.method public setResizeMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # I

    .line 633
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    .line 634
    return-object p0
.end method

.method public setRotationAnimation(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # I

    .line 663
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    .line 664
    return-object p0
.end method

.method public setScreenOrientation(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # I

    .line 627
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    .line 628
    return-object p0
.end method

.method public setSoftInputMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # I

    .line 609
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->softInputMode:I

    .line 610
    return-object p0
.end method

.method public setSupportsSizeChanges(Z)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # Z

    .line 651
    iput-boolean p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->supportsSizeChanges:Z

    .line 652
    return-object p0
.end method

.method public setTargetActivity(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 3
    .param p1, "targetActivity"    # Ljava/lang/String;

    .line 241
    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->targetActivity:Ljava/lang/String;

    .line 242
    return-object p0
.end method

.method public setTaskAffinity(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 573
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->taskAffinity:Ljava/lang/String;

    .line 574
    return-object p0
.end method

.method public setTheme(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # I

    .line 555
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->theme:I

    .line 556
    return-object p0
.end method

.method public setUiOptions(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # I

    .line 561
    iput p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->uiOptions:I

    .line 562
    return-object p0
.end method

.method public setWindowLayout(Landroid/content/pm/ActivityInfo$WindowLayout;)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;
    .registers 2
    .param p1, "value"    # Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 675
    iput-object p1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 676
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 272
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Activity{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 287
    invoke-super {p0, p1, p2}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 288
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->theme:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->uiOptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->targetActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->parentActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->privateFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->permission:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    .line 295
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->launchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->documentLaunchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxRecents:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->configChanges:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->softInputMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->persistableMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->lockTaskLaunchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->screenOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->resizeMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->maxAspectRatio:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 305
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->minAspectRatio:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 306
    iget-boolean v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->supportsSizeChanges:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 307
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->requestedVrComponent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 308
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->rotationAnimation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    iget v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->colorMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 312
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_90

    .line 313
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    iget-object v0, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-virtual {v0, p1}, Landroid/content/pm/ActivityInfo$WindowLayout;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_94

    .line 316
    :cond_90
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 318
    :goto_94
    sget-object v0, Lcom/android/server/pm/pkg/parsing/ParsingPackageImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    iget-object v1, p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    .line 319
    return-void
.end method
