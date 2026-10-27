.class public Landroid/content/pm/PackageParser$ApkLite;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApkLite"
.end annotation


# instance fields
.field public final greylist-max-o codePath:Ljava/lang/String;

.field public final greylist-max-o configForSplit:Ljava/lang/String;

.field public final greylist-max-o coreApp:Z

.field public final greylist-max-o debuggable:Z

.field public final greylist-max-o extractNativeLibs:Z

.field public final greylist-max-o installLocation:I

.field public greylist-max-o isFeatureSplit:Z

.field public final blacklist isSplitRequired:Z

.field public final greylist-max-o isolatedSplits:Z

.field public final blacklist minSdkVersion:I

.field public final greylist-max-o multiArch:Z

.field public final blacklist overlayIsStatic:Z

.field public final blacklist overlayPriority:I

.field public final greylist-max-o packageName:Ljava/lang/String;

.field public final blacklist profilableByShell:Z

.field public final greylist-max-o revisionCode:I

.field public final blacklist rollbackDataPolicy:I

.field public final greylist-max-o signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

.field public final greylist-max-o splitName:Ljava/lang/String;

.field public final blacklist targetPackageName:Ljava/lang/String;

.field public final blacklist targetSdkVersion:I

.field public final greylist-max-o use32bitAbi:Z

.field public final blacklist useEmbeddedDex:Z

.field public final greylist-max-o usesSplitName:Ljava/lang/String;

.field public final greylist-max-o verifiers:[Landroid/content/pm/VerifierInfo;

.field public final greylist-max-o versionCode:I

.field public final greylist-max-o versionCodeMajor:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZIIIILjava/util/List;Landroid/content/pm/PackageParser$SigningDetails;ZZZZZZZZLjava/lang/String;ZIIII)V
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZIIII",
            "Ljava/util/List<",
            "Landroid/content/pm/VerifierInfo;",
            ">;",
            "Landroid/content/pm/PackageParser$SigningDetails;",
            "ZZZZZZZZ",
            "Ljava/lang/String;",
            "ZIIII)V"
        }
    .end annotation

    .line 514
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    iput-object p1, p0, Landroid/content/pm/PackageParser$ApkLite;->codePath:Ljava/lang/String;

    .line 516
    iput-object p2, p0, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    .line 517
    iput-object p3, p0, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    .line 518
    iput-boolean p4, p0, Landroid/content/pm/PackageParser$ApkLite;->isFeatureSplit:Z

    .line 519
    iput-object p5, p0, Landroid/content/pm/PackageParser$ApkLite;->configForSplit:Ljava/lang/String;

    .line 520
    iput-object p6, p0, Landroid/content/pm/PackageParser$ApkLite;->usesSplitName:Ljava/lang/String;

    .line 521
    iput p8, p0, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    .line 522
    iput p9, p0, Landroid/content/pm/PackageParser$ApkLite;->versionCodeMajor:I

    .line 523
    iput p10, p0, Landroid/content/pm/PackageParser$ApkLite;->revisionCode:I

    .line 524
    iput p11, p0, Landroid/content/pm/PackageParser$ApkLite;->installLocation:I

    .line 525
    iput-object p13, p0, Landroid/content/pm/PackageParser$ApkLite;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 526
    invoke-interface {p12}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroid/content/pm/VerifierInfo;

    invoke-interface {p12, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/pm/VerifierInfo;

    iput-object p1, p0, Landroid/content/pm/PackageParser$ApkLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    .line 527
    iput-boolean p14, p0, Landroid/content/pm/PackageParser$ApkLite;->coreApp:Z

    .line 528
    iput-boolean p15, p0, Landroid/content/pm/PackageParser$ApkLite;->debuggable:Z

    .line 529
    move/from16 p1, p16

    iput-boolean p1, p0, Landroid/content/pm/PackageParser$ApkLite;->profilableByShell:Z

    .line 530
    move/from16 p1, p17

    iput-boolean p1, p0, Landroid/content/pm/PackageParser$ApkLite;->multiArch:Z

    .line 531
    move/from16 p1, p18

    iput-boolean p1, p0, Landroid/content/pm/PackageParser$ApkLite;->use32bitAbi:Z

    .line 532
    move/from16 p1, p19

    iput-boolean p1, p0, Landroid/content/pm/PackageParser$ApkLite;->useEmbeddedDex:Z

    .line 533
    move/from16 p1, p20

    iput-boolean p1, p0, Landroid/content/pm/PackageParser$ApkLite;->extractNativeLibs:Z

    .line 534
    move/from16 p1, p21

    iput-boolean p1, p0, Landroid/content/pm/PackageParser$ApkLite;->isolatedSplits:Z

    .line 535
    iput-boolean p7, p0, Landroid/content/pm/PackageParser$ApkLite;->isSplitRequired:Z

    .line 536
    move-object/from16 p1, p22

    iput-object p1, p0, Landroid/content/pm/PackageParser$ApkLite;->targetPackageName:Ljava/lang/String;

    .line 537
    move/from16 p1, p23

    iput-boolean p1, p0, Landroid/content/pm/PackageParser$ApkLite;->overlayIsStatic:Z

    .line 538
    move/from16 p1, p24

    iput p1, p0, Landroid/content/pm/PackageParser$ApkLite;->overlayPriority:I

    .line 539
    move/from16 p1, p25

    iput p1, p0, Landroid/content/pm/PackageParser$ApkLite;->minSdkVersion:I

    .line 540
    move/from16 p1, p26

    iput p1, p0, Landroid/content/pm/PackageParser$ApkLite;->targetSdkVersion:I

    .line 541
    move/from16 p1, p27

    iput p1, p0, Landroid/content/pm/PackageParser$ApkLite;->rollbackDataPolicy:I

    .line 542
    return-void
.end method


# virtual methods
.method public greylist-max-o getLongVersionCode()J
    .registers 3

    .line 545
    iget v0, p0, Landroid/content/pm/PackageParser$ApkLite;->versionCodeMajor:I

    iget v1, p0, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    invoke-static {v0, v1}, Landroid/content/pm/PackageInfo;->composeLongVersionCode(II)J

    move-result-wide v0

    return-wide v0
.end method
