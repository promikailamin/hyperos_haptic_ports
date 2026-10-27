.class public Landroid/app/ActivityManager$TaskDescription;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskDescription"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManager$TaskDescription$Builder;
    }
.end annotation


# static fields
.field private static final greylist-max-o ATTR_TASKDESCRIPTIONCOLOR_BACKGROUND:Ljava/lang/String; = "task_description_color_background"

.field private static final blacklist ATTR_TASKDESCRIPTIONCOLOR_BACKGROUND_FLOATING:Ljava/lang/String; = "task_description_color_background_floating"

.field private static final greylist-max-o ATTR_TASKDESCRIPTIONCOLOR_PRIMARY:Ljava/lang/String; = "task_description_color"

.field private static final greylist-max-o ATTR_TASKDESCRIPTIONICON_FILENAME:Ljava/lang/String; = "task_description_icon_filename"

.field private static final greylist-max-o ATTR_TASKDESCRIPTIONICON_RESOURCE:Ljava/lang/String; = "task_description_icon_resource"

.field private static final blacklist ATTR_TASKDESCRIPTIONICON_RESOURCE_PACKAGE:Ljava/lang/String; = "task_description_icon_package"

.field private static final greylist-max-o ATTR_TASKDESCRIPTIONLABEL:Ljava/lang/String; = "task_description_label"

.field public static final greylist-max-o ATTR_TASKDESCRIPTION_PREFIX:Ljava/lang/String; = "task_description_"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/ActivityManager$TaskDescription;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mColorBackground:I

.field private blacklist mColorBackgroundFloating:I

.field private greylist-max-o mColorPrimary:I

.field private blacklist mEnsureNavigationBarContrastWhenTransparent:Z

.field private blacklist mEnsureStatusBarContrastWhenTransparent:Z

.field private blacklist mIcon:Landroid/graphics/drawable/Icon;

.field private greylist-max-o mIconFilename:Ljava/lang/String;

.field private greylist-max-o mLabel:Ljava/lang/String;

.field private blacklist mMinHeight:I

.field private blacklist mMinWidth:I

.field private greylist-max-o mNavigationBarColor:I

.field private blacklist mResizeMode:I

.field private greylist-max-o mStatusBarColor:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1977
    new-instance v0, Landroid/app/ActivityManager$TaskDescription$1;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1439
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;IIIIZZIIII)V

    .line 1440
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/ActivityManager$TaskDescription;)V
    .registers 2
    .param p1, "td"    # Landroid/app/ActivityManager$TaskDescription;

    .line 1500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1501
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$TaskDescription;->copyFrom(Landroid/app/ActivityManager$TaskDescription;)V

    .line 1502
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "source"    # Landroid/os/Parcel;

    .line 1564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1565
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$TaskDescription;->readFromParcel(Landroid/os/Parcel;)V

    .line 1566
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/ActivityManager$TaskDescription-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/ActivityManager$TaskDescription;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 15
    .param p1, "label"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1429
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v12}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;IIIIZZIIII)V

    .line 1430
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .registers 18
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "iconRes"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1416
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, 0x0

    move-object v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v14}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;IIIIZZIIII)V

    .line 1418
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;II)V
    .registers 19
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "iconRes"    # I
    .param p3, "colorPrimary"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1398
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, 0x0

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v5, p3

    invoke-direct/range {v2 .. v14}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;IIIIZZIIII)V

    .line 1400
    if-eqz p3, :cond_2e

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v2, 0xff

    if-ne v0, v2, :cond_26

    goto :goto_2e

    .line 1401
    :cond_26
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "A TaskDescription\'s primary color should be opaque"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1403
    :cond_2e
    :goto_2e
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 17
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1471
    if-eqz p2, :cond_7

    invoke-static/range {p2 .. p2}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v13}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;IIIIZZIIII)V

    .line 1473
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .registers 18
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "colorPrimary"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1454
    if-eqz p2, :cond_7

    invoke-static/range {p2 .. p2}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    move-object v3, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    move-object v1, p0

    move-object v2, p1

    move/from16 v4, p3

    invoke-direct/range {v1 .. v13}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;IIIIZZIIII)V

    .line 1456
    if-eqz p3, :cond_2c

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_24

    goto :goto_2c

    .line 1457
    :cond_24
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A TaskDescription\'s primary color should be opaque"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1459
    :cond_2c
    :goto_2c
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;IIIIZZIIII)V
    .registers 13
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;
    .param p3, "colorPrimary"    # I
    .param p4, "colorBackground"    # I
    .param p5, "statusBarColor"    # I
    .param p6, "navigationBarColor"    # I
    .param p7, "ensureStatusBarContrastWhenTransparent"    # Z
    .param p8, "ensureNavigationBarContrastWhenTransparent"    # Z
    .param p9, "resizeMode"    # I
    .param p10, "minWidth"    # I
    .param p11, "minHeight"    # I
    .param p12, "colorBackgroundFloating"    # I

    .line 1481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1482
    iput-object p1, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    .line 1483
    iput-object p2, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    .line 1484
    iput p3, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    .line 1485
    iput p4, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    .line 1486
    iput p5, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    .line 1487
    iput p6, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    .line 1488
    iput-boolean p7, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    .line 1489
    iput-boolean p8, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    .line 1491
    iput p9, p0, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    .line 1492
    iput p10, p0, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    .line 1493
    iput p11, p0, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    .line 1494
    iput p12, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    .line 1495
    return-void
.end method

.method public static blacklist equals(Landroid/app/ActivityManager$TaskDescription;Landroid/app/ActivityManager$TaskDescription;)Z
    .registers 3
    .param p0, "td1"    # Landroid/app/ActivityManager$TaskDescription;
    .param p1, "td2"    # Landroid/app/ActivityManager$TaskDescription;

    .line 2028
    if-nez p0, :cond_6

    if-nez p1, :cond_6

    .line 2029
    const/4 v0, 0x1

    return v0

    .line 2030
    :cond_6
    if-eqz p0, :cond_f

    if-eqz p1, :cond_f

    .line 2031
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$TaskDescription;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 2033
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist loadTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "iconFilename"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 1755
    if-eqz p0, :cond_11

    .line 1757
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->-$$Nest$smgetTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/app/IActivityTaskManager;->getTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a} :catch_b

    return-object v0

    .line 1759
    :catch_b
    move-exception v0

    .line 1760
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1763
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public greylist-max-o copyFrom(Landroid/app/ActivityManager$TaskDescription;)V
    .registers 3
    .param p1, "other"    # Landroid/app/ActivityManager$TaskDescription;

    .line 1509
    iget-object v0, p1, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    .line 1510
    iget-object v0, p1, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    .line 1511
    iget-object v0, p1, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    .line 1512
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    .line 1513
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    .line 1514
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    .line 1515
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    .line 1516
    iget-boolean v0, p1, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    iput-boolean v0, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    .line 1517
    iget-boolean v0, p1, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    iput-boolean v0, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    .line 1519
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    .line 1520
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    .line 1521
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    .line 1522
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    .line 1523
    return-void
.end method

.method public greylist-max-o copyFromPreserveHiddenFields(Landroid/app/ActivityManager$TaskDescription;)V
    .registers 4
    .param p1, "other"    # Landroid/app/ActivityManager$TaskDescription;

    .line 1531
    iget-object v0, p1, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    .line 1532
    iget-object v0, p1, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    .line 1533
    iget-object v0, p1, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    .line 1534
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    .line 1536
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    if-eqz v0, :cond_16

    .line 1537
    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    .line 1539
    :cond_16
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    if-eqz v0, :cond_1c

    .line 1540
    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    .line 1542
    :cond_1c
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    if-eqz v0, :cond_22

    .line 1543
    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    .line 1546
    :cond_22
    iget-boolean v0, p1, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    iput-boolean v0, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    .line 1547
    iget-boolean v0, p1, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    iput-boolean v0, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    .line 1550
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_31

    .line 1551
    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    .line 1553
    :cond_31
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_38

    .line 1554
    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    .line 1556
    :cond_38
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    if-eq v0, v1, :cond_3e

    .line 1557
    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    .line 1559
    :cond_3e
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    if-eqz v0, :cond_44

    .line 1560
    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    .line 1562
    :cond_44
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1921
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2004
    instance-of v0, p1, Landroid/app/ActivityManager$TaskDescription;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2005
    return v1

    .line 2008
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/app/ActivityManager$TaskDescription;

    .line 2009
    .local v0, "other":Landroid/app/ActivityManager$TaskDescription;
    iget-object v2, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_61

    iget-object v2, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    .line 2010
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_61

    iget-object v2, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    iget-object v3, v0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    if-ne v2, v3, :cond_61

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    iget v3, v0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    if-ne v2, v3, :cond_61

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    iget v3, v0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    if-ne v2, v3, :cond_61

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    iget v3, v0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    if-ne v2, v3, :cond_61

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    iget v3, v0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    if-ne v2, v3, :cond_61

    iget-boolean v2, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    iget-boolean v3, v0, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    if-ne v2, v3, :cond_61

    iget-boolean v2, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    iget-boolean v3, v0, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    if-ne v2, v3, :cond_61

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    iget v3, v0, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    if-ne v2, v3, :cond_61

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    iget v3, v0, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    if-ne v2, v3, :cond_61

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    iget v3, v0, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    if-ne v2, v3, :cond_61

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    iget v3, v0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    if-ne v2, v3, :cond_61

    const/4 v1, 0x1

    goto :goto_62

    :cond_61
    nop

    .line 2009
    :goto_62
    return v1
.end method

.method public whitelist getBackgroundColor()I
    .registers 2

    .line 1779
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    return v0
.end method

.method public blacklist getBackgroundColorFloating()I
    .registers 2

    .line 1787
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    return v0
.end method

.method public blacklist getEnsureNavigationBarContrastWhenTransparent()Z
    .registers 2

    .line 1825
    iget-boolean v0, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    return v0
.end method

.method public blacklist getEnsureStatusBarContrastWhenTransparent()Z
    .registers 2

    .line 1810
    iget-boolean v0, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    return v0
.end method

.method public whitelist getIcon()Landroid/graphics/Bitmap;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1705
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1706
    .local v0, "icon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_7

    .line 1707
    return-object v0

    .line 1709
    :cond_7
    iget-object v1, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v1, v2}, Landroid/app/ActivityManager$TaskDescription;->loadTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getIconFilename()Ljava/lang/String;
    .registers 2

    .line 1740
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getIconResource()I
    .registers 3

    .line 1731
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    .line 1732
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v0

    return v0

    .line 1734
    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getIconResourcePackage()Ljava/lang/String;
    .registers 3

    .line 1722
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    .line 1723
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1725
    :cond_12
    const-string v0, ""

    return-object v0
.end method

.method public greylist getInMemoryIcon()Landroid/graphics/Bitmap;
    .registers 3

    .line 1746
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 1747
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 1749
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getLabel()Ljava/lang/String;
    .registers 2

    .line 1679
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMinHeight()I
    .registers 2

    .line 1855
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    return v0
.end method

.method public blacklist getMinWidth()I
    .registers 2

    .line 1848
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    return v0
.end method

.method public whitelist getNavigationBarColor()I
    .registers 2

    .line 1803
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    return v0
.end method

.method public whitelist getPrimaryColor()I
    .registers 2

    .line 1771
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    return v0
.end method

.method public blacklist getRawIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 1715
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public blacklist getResizeMode()I
    .registers 2

    .line 1841
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    return v0
.end method

.method public whitelist getStatusBarColor()I
    .registers 2

    .line 1795
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    return v0
.end method

.method public blacklist loadIcon()Landroid/graphics/drawable/Icon;
    .registers 3

    .line 1688
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_5

    .line 1689
    return-object v0

    .line 1691
    :cond_5
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/app/ActivityManager$TaskDescription;->loadTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1692
    .local v0, "loadedIcon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_16

    .line 1693
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    return-object v1

    .line 1695
    :cond_16
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 1960
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_c

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_c
    move-object v0, v1

    :goto_d
    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    .line 1961
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1f

    .line 1962
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    .line 1964
    :cond_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    .line 1965
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    .line 1966
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    .line 1967
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    .line 1968
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    .line 1969
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    .line 1970
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    .line 1971
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    .line 1972
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    .line 1973
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_5f

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    :cond_5f
    iput-object v1, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    .line 1974
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    .line 1975
    return-void
.end method

.method public blacklist restoreFromXml(Landroid/util/TypedXmlPullParser;)V
    .registers 10
    .param p1, "in"    # Landroid/util/TypedXmlPullParser;

    .line 1885
    const/4 v0, 0x0

    const-string/jumbo v1, "task_description_label"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1886
    .local v1, "label":Ljava/lang/String;
    if-eqz v1, :cond_d

    .line 1887
    invoke-virtual {p0, v1}, Landroid/app/ActivityManager$TaskDescription;->setLabel(Ljava/lang/String;)V

    .line 1889
    :cond_d
    const-string/jumbo v2, "task_description_color"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 1891
    .local v2, "colorPrimary":I
    if-eqz v2, :cond_1a

    .line 1892
    invoke-virtual {p0, v2}, Landroid/app/ActivityManager$TaskDescription;->setPrimaryColor(I)V

    .line 1894
    :cond_1a
    const-string/jumbo v4, "task_description_color_background"

    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 1896
    .local v4, "colorBackground":I
    if-eqz v4, :cond_26

    .line 1897
    invoke-virtual {p0, v4}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColor(I)V

    .line 1899
    :cond_26
    const-string/jumbo v5, "task_description_color_background_floating"

    invoke-interface {p1, v0, v5, v3}, Landroid/util/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 1901
    .local v5, "colorBackgroundFloating":I
    if-eqz v5, :cond_32

    .line 1902
    invoke-virtual {p0, v5}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColorFloating(I)V

    .line 1904
    :cond_32
    const-string/jumbo v6, "task_description_icon_filename"

    invoke-interface {p1, v0, v6}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1906
    .local v6, "iconFilename":Ljava/lang/String;
    if-eqz v6, :cond_3e

    .line 1907
    invoke-virtual {p0, v6}, Landroid/app/ActivityManager$TaskDescription;->setIconFilename(Ljava/lang/String;)V

    .line 1909
    :cond_3e
    const-string/jumbo v7, "task_description_icon_resource"

    invoke-interface {p1, v0, v7, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 1911
    .local v3, "iconResourceId":I
    const-string/jumbo v7, "task_description_icon_package"

    invoke-interface {p1, v0, v7}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1913
    .local v0, "iconResourcePackage":Ljava/lang/String;
    if-eqz v3, :cond_57

    if-eqz v0, :cond_57

    .line 1914
    invoke-static {v0, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/app/ActivityManager$TaskDescription;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 1917
    :cond_57
    return-void
.end method

.method public blacklist saveToXml(Landroid/util/TypedXmlSerializer;)V
    .registers 5
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1860
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 1861
    const-string/jumbo v2, "task_description_label"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1863
    :cond_b
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    if-eqz v0, :cond_15

    .line 1864
    const-string/jumbo v2, "task_description_color"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1866
    :cond_15
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    if-eqz v0, :cond_1f

    .line 1867
    const-string/jumbo v2, "task_description_color_background"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1869
    :cond_1f
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    if-eqz v0, :cond_29

    .line 1870
    const-string/jumbo v2, "task_description_color_background_floating"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1873
    :cond_29
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    if-eqz v0, :cond_33

    .line 1874
    const-string/jumbo v2, "task_description_icon_filename"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1876
    :cond_33
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_56

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_56

    .line 1877
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v0

    const-string/jumbo v2, "task_description_icon_resource"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1878
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    .line 1879
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v0

    .line 1878
    const-string/jumbo v2, "task_description_icon_package"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1881
    :cond_56
    return-void
.end method

.method public greylist-max-o setBackgroundColor(I)V
    .registers 4
    .param p1, "backgroundColor"    # I

    .line 1594
    if-eqz p1, :cond_13

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_b

    goto :goto_13

    .line 1595
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A TaskDescription\'s background color should be opaque"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1597
    :cond_13
    :goto_13
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    .line 1598
    return-void
.end method

.method public blacklist setBackgroundColorFloating(I)V
    .registers 4
    .param p1, "backgroundColor"    # I

    .line 1606
    if-eqz p1, :cond_13

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_b

    goto :goto_13

    .line 1607
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A TaskDescription\'s background color floating should be opaque"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1610
    :cond_13
    :goto_13
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    .line 1611
    return-void
.end method

.method public blacklist setEnsureNavigationBarContrastWhenTransparent(Z)V
    .registers 2
    .param p1, "ensureNavigationBarContrastWhenTransparent"    # Z

    .line 1833
    iput-boolean p1, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    .line 1835
    return-void
.end method

.method public blacklist setEnsureStatusBarContrastWhenTransparent(Z)V
    .registers 2
    .param p1, "ensureStatusBarContrastWhenTransparent"    # Z

    .line 1818
    iput-boolean p1, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    .line 1819
    return-void
.end method

.method public blacklist setIcon(Landroid/graphics/drawable/Icon;)V
    .registers 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 1632
    iput-object p1, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    .line 1633
    return-void
.end method

.method public greylist-max-o setIconFilename(Ljava/lang/String;)V
    .registers 3
    .param p1, "iconFilename"    # Ljava/lang/String;

    .line 1641
    iput-object p1, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    .line 1642
    if-eqz p1, :cond_7

    .line 1644
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    .line 1646
    :cond_7
    return-void
.end method

.method public greylist-max-o setLabel(Ljava/lang/String;)V
    .registers 2
    .param p1, "label"    # Ljava/lang/String;

    .line 1573
    iput-object p1, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    .line 1574
    return-void
.end method

.method public blacklist setMinHeight(I)V
    .registers 2
    .param p1, "minHeight"    # I

    .line 1672
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    .line 1673
    return-void
.end method

.method public blacklist setMinWidth(I)V
    .registers 2
    .param p1, "minWidth"    # I

    .line 1663
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    .line 1664
    return-void
.end method

.method public greylist-max-o setNavigationBarColor(I)V
    .registers 2
    .param p1, "navigationBarColor"    # I

    .line 1624
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    .line 1625
    return-void
.end method

.method public greylist-max-o setPrimaryColor(I)V
    .registers 4
    .param p1, "primaryColor"    # I

    .line 1582
    if-eqz p1, :cond_13

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_b

    goto :goto_13

    .line 1583
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A TaskDescription\'s primary color should be opaque"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1585
    :cond_13
    :goto_13
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    .line 1586
    return-void
.end method

.method public blacklist setResizeMode(I)V
    .registers 2
    .param p1, "resizeMode"    # I

    .line 1654
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    .line 1655
    return-void
.end method

.method public greylist-max-o setStatusBarColor(I)V
    .registers 2
    .param p1, "statusBarColor"    # I

    .line 1617
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    .line 1618
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 1989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskDescription Label: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Icon: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IconFilename: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " colorPrimary: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " colorBackground: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " statusBarColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1993
    iget-boolean v1, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    const-string v2, " (contrast when transparent)"

    const-string v3, ""

    if-eqz v1, :cond_57

    move-object v1, v2

    goto :goto_58

    .line 1994
    :cond_57
    move-object v1, v3

    :goto_58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " navigationBarColor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1995
    iget-boolean v1, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    if-eqz v1, :cond_6d

    .line 1996
    goto :goto_6e

    :cond_6d
    move-object v2, v3

    :goto_6e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resizeMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    .line 1997
    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " colorBackgrounFloating: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1989
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1926
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_a

    .line 1927
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12

    .line 1929
    :cond_a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1930
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1932
    :goto_12
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1933
    .local v0, "bitmapIcon":Landroid/graphics/Bitmap;
    iget-object v3, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v3, :cond_2c

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_23

    goto :goto_2c

    .line 1938
    :cond_23
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1939
    iget-object v3, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, p1, v2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2f

    .line 1936
    :cond_2c
    :goto_2c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1941
    :goto_2f
    iget v3, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1942
    iget v3, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1943
    iget v3, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1944
    iget v3, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1945
    iget-boolean v3, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1946
    iget-boolean v3, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1947
    iget v3, p0, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1948
    iget v3, p0, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1949
    iget v3, p0, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1950
    iget-object v3, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    if-nez v3, :cond_64

    .line 1951
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6c

    .line 1953
    :cond_64
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1954
    iget-object v1, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1956
    :goto_6c
    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1957
    return-void
.end method
