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

.field private blacklist mSystemBarsAppearance:I

.field private blacklist mTopOpaqueSystemBarsAppearance:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2649
    new-instance v0, Landroid/app/ActivityManager$TaskDescription$1;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 16
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2064
    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;IIIIIIZZIIII)V

    .line 2065
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/ActivityManager$TaskDescription;)V
    .registers 2

    .line 2129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2130
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$TaskDescription;->copyFrom(Landroid/app/ActivityManager$TaskDescription;)V

    .line 2131
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 2201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2202
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$TaskDescription;->readFromParcel(Landroid/os/Parcel;)V

    .line 2203
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/ActivityManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/ActivityManager$TaskDescription;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2054
    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, -0x1

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v14}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;IIIIIIZZIIII)V

    .line 2055
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .registers 19
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2041
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v15}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;IIIIIIZZIIII)V

    .line 2043
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;II)V
    .registers 20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2023
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p3

    invoke-direct/range {v1 .. v15}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;IIIIIIZZIIII)V

    .line 2025
    if-eqz p3, :cond_31

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_29

    goto :goto_31

    .line 2026
    :cond_29
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A TaskDescription\'s primary color should be opaque"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2028
    :cond_31
    :goto_31
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 19
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2096
    if-eqz p2, :cond_7

    invoke-static/range {p2 .. p2}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    move-object v3, v0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v15}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;IIIIIIZZIIII)V

    .line 2098
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .registers 20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2079
    if-eqz p2, :cond_7

    invoke-static/range {p2 .. p2}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    move-object v3, v0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x2

    const/4 v13, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p3

    invoke-direct/range {v1 .. v15}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;IIIIIIZZIIII)V

    .line 2081
    if-eqz p3, :cond_30

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_28

    goto :goto_30

    .line 2082
    :cond_28
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A TaskDescription\'s primary color should be opaque"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2084
    :cond_30
    :goto_30
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/graphics/drawable/Icon;IIIIIIZZIIII)V
    .registers 15

    .line 2108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2109
    iput-object p1, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    .line 2110
    iput-object p2, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    .line 2111
    iput p3, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    .line 2112
    iput p4, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    .line 2113
    iput p5, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    .line 2114
    iput p6, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    .line 2115
    iput p7, p0, Landroid/app/ActivityManager$TaskDescription;->mSystemBarsAppearance:I

    .line 2116
    iput p8, p0, Landroid/app/ActivityManager$TaskDescription;->mTopOpaqueSystemBarsAppearance:I

    .line 2117
    iput-boolean p9, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    .line 2118
    iput-boolean p10, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    .line 2120
    iput p11, p0, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    .line 2121
    iput p12, p0, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    .line 2122
    iput p13, p0, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    .line 2123
    iput p14, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    .line 2124
    return-void
.end method

.method public static blacklist equals(Landroid/app/ActivityManager$TaskDescription;Landroid/app/ActivityManager$TaskDescription;)Z
    .registers 2

    .line 2731
    if-nez p0, :cond_6

    if-nez p1, :cond_6

    .line 2732
    const/4 p0, 0x1

    return p0

    .line 2733
    :cond_6
    if-eqz p0, :cond_f

    if-eqz p1, :cond_f

    .line 2734
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$TaskDescription;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 2736
    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist loadTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 3

    .line 2393
    if-eqz p0, :cond_11

    .line 2395
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->-$$Nest$smgetTaskService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/app/IActivityTaskManager;->getTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a} :catch_b

    return-object p0

    .line 2397
    :catch_b
    move-exception p0

    .line 2398
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 2401
    :cond_11
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public greylist-max-o copyFrom(Landroid/app/ActivityManager$TaskDescription;)V
    .registers 3

    .line 2138
    iget-object v0, p1, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    .line 2139
    iget-object v0, p1, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    .line 2140
    iget-object v0, p1, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    .line 2141
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    .line 2142
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    .line 2143
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    .line 2144
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    .line 2145
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mSystemBarsAppearance:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mSystemBarsAppearance:I

    .line 2146
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mTopOpaqueSystemBarsAppearance:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mTopOpaqueSystemBarsAppearance:I

    .line 2147
    iget-boolean v0, p1, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    iput-boolean v0, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    .line 2148
    iget-boolean v0, p1, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    iput-boolean v0, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    .line 2150
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    .line 2151
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    .line 2152
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    .line 2153
    iget p1, p1, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    .line 2154
    return-void
.end method

.method public greylist-max-o copyFromPreserveHiddenFields(Landroid/app/ActivityManager$TaskDescription;)V
    .registers 4

    .line 2162
    iget-object v0, p1, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    .line 2163
    iget-object v0, p1, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    .line 2164
    iget-object v0, p1, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    .line 2165
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    .line 2167
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    if-eqz v0, :cond_18

    .line 2168
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    .line 2170
    :cond_18
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    if-eqz v0, :cond_20

    .line 2171
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    .line 2173
    :cond_20
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    if-eqz v0, :cond_28

    .line 2174
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    .line 2176
    :cond_28
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mSystemBarsAppearance:I

    if-eqz v0, :cond_30

    .line 2177
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mSystemBarsAppearance:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mSystemBarsAppearance:I

    .line 2179
    :cond_30
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mTopOpaqueSystemBarsAppearance:I

    if-eqz v0, :cond_38

    .line 2180
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mTopOpaqueSystemBarsAppearance:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mTopOpaqueSystemBarsAppearance:I

    .line 2183
    :cond_38
    iget-boolean v0, p1, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    iput-boolean v0, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    .line 2184
    iget-boolean v0, p1, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    iput-boolean v0, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    .line 2187
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_49

    .line 2188
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    .line 2190
    :cond_49
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_52

    .line 2191
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    .line 2193
    :cond_52
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    if-eq v0, v1, :cond_5a

    .line 2194
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    .line 2196
    :cond_5a
    iget v0, p1, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    if-eqz v0, :cond_62

    .line 2197
    iget p1, p1, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    .line 2199
    :cond_62
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 2589
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 2705
    instance-of v0, p1, Landroid/app/ActivityManager$TaskDescription;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2706
    return v1

    .line 2709
    :cond_6
    check-cast p1, Landroid/app/ActivityManager$TaskDescription;

    .line 2710
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    iget-object v2, p1, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    iget-object v2, p1, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    .line 2711
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    iget-object v2, p1, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    if-ne v0, v2, :cond_6c

    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    iget v2, p1, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    if-ne v0, v2, :cond_6c

    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    iget v2, p1, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    if-ne v0, v2, :cond_6c

    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    iget v2, p1, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    if-ne v0, v2, :cond_6c

    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    iget v2, p1, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    if-ne v0, v2, :cond_6c

    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mSystemBarsAppearance:I

    iget v2, p1, Landroid/app/ActivityManager$TaskDescription;->mSystemBarsAppearance:I

    if-ne v0, v2, :cond_6c

    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mTopOpaqueSystemBarsAppearance:I

    iget v2, p1, Landroid/app/ActivityManager$TaskDescription;->mTopOpaqueSystemBarsAppearance:I

    if-ne v0, v2, :cond_6c

    iget-boolean v0, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    iget-boolean v2, p1, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    if-ne v0, v2, :cond_6c

    iget-boolean v0, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    iget-boolean v2, p1, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    if-ne v0, v2, :cond_6c

    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    iget v2, p1, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    if-ne v0, v2, :cond_6c

    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    iget v2, p1, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    if-ne v0, v2, :cond_6c

    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    iget v2, p1, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    if-ne v0, v2, :cond_6c

    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    iget p1, p1, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    if-ne v0, p1, :cond_6c

    const/4 v1, 0x1

    goto :goto_6d

    :cond_6c
    nop

    .line 2710
    :goto_6d
    return v1
.end method

.method public whitelist getBackgroundColor()I
    .registers 2

    .line 2417
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    return v0
.end method

.method public blacklist getBackgroundColorFloating()I
    .registers 2

    .line 2425
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    return v0
.end method

.method public blacklist getEnsureNavigationBarContrastWhenTransparent()Z
    .registers 2

    .line 2493
    iget-boolean v0, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    return v0
.end method

.method public blacklist getEnsureStatusBarContrastWhenTransparent()Z
    .registers 2

    .line 2448
    iget-boolean v0, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    return v0
.end method

.method public whitelist getIcon()Landroid/graphics/Bitmap;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2342
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2343
    if-eqz v0, :cond_7

    .line 2344
    return-object v0

    .line 2346
    :cond_7
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/app/ActivityManager$TaskDescription;->loadTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIconFilename()Ljava/lang/String;
    .registers 2

    .line 2377
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getIconResource()I
    .registers 3

    .line 2368
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 2369
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v0

    return v0

    .line 2371
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getIconResourcePackage()Ljava/lang/String;
    .registers 3

    .line 2359
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    .line 2360
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2362
    :cond_14
    const-string v0, ""

    return-object v0
.end method

.method public greylist getInMemoryIcon()Landroid/graphics/Bitmap;
    .registers 3

    .line 2383
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 2384
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 2386
    :cond_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getLabel()Ljava/lang/String;
    .registers 2

    .line 2316
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getMinHeight()I
    .registers 2

    .line 2523
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    return v0
.end method

.method public blacklist getMinWidth()I
    .registers 2

    .line 2516
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    return v0
.end method

.method public whitelist getNavigationBarColor()I
    .registers 2

    .line 2441
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    return v0
.end method

.method public whitelist getPrimaryColor()I
    .registers 2

    .line 2409
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    return v0
.end method

.method public blacklist getRawIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 2352
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public blacklist getResizeMode()I
    .registers 2

    .line 2509
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    return v0
.end method

.method public whitelist getStatusBarColor()I
    .registers 2

    .line 2433
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    return v0
.end method

.method public blacklist getSystemBarsAppearance()I
    .registers 2

    .line 2456
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mSystemBarsAppearance:I

    return v0
.end method

.method public blacklist getTopOpaqueSystemBarsAppearance()I
    .registers 2

    .line 2464
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mTopOpaqueSystemBarsAppearance:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 2678
    nop

    .line 2679
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 2680
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    goto :goto_11

    .line 2679
    :cond_f
    const/16 v1, 0x11

    .line 2682
    :goto_11
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_1e

    .line 2683
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 2685
    :cond_1e
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    if-eqz v0, :cond_2b

    .line 2686
    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 2688
    :cond_2b
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    add-int/2addr v1, v0

    .line 2689
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    add-int/2addr v1, v0

    .line 2690
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    add-int/2addr v1, v0

    .line 2691
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    add-int/2addr v1, v0

    .line 2692
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    add-int/2addr v1, v0

    .line 2693
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mSystemBarsAppearance:I

    add-int/2addr v1, v0

    .line 2694
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mTopOpaqueSystemBarsAppearance:I

    add-int/2addr v1, v0

    .line 2695
    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    add-int/2addr v1, v0

    .line 2696
    mul-int/lit8 v1, v1, 0x1f

    iget-boolean v0, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    add-int/2addr v1, v0

    .line 2697
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    add-int/2addr v1, v0

    .line 2698
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    add-int/2addr v1, v0

    .line 2699
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    add-int/2addr v1, v0

    .line 2700
    return v1
.end method

.method public blacklist loadIcon()Landroid/graphics/drawable/Icon;
    .registers 3

    .line 2325
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_7

    .line 2326
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0

    .line 2328
    :cond_7
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/app/ActivityManager$TaskDescription;->loadTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2329
    if-eqz v0, :cond_18

    .line 2330
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0

    .line 2332
    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    .line 2630
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

    .line 2631
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1f

    .line 2632
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    .line 2634
    :cond_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    .line 2635
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    .line 2636
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    .line 2637
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    .line 2638
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mSystemBarsAppearance:I

    .line 2639
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mTopOpaqueSystemBarsAppearance:I

    .line 2640
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    .line 2641
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    .line 2642
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    .line 2643
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    .line 2644
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    .line 2645
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_6b

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    :cond_6b
    iput-object v1, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    .line 2646
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    .line 2647
    return-void
.end method

.method public blacklist restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .registers 5

    .line 2553
    const-string/jumbo v0, "task_description_label"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2554
    if-eqz v0, :cond_d

    .line 2555
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager$TaskDescription;->setLabel(Ljava/lang/String;)V

    .line 2557
    :cond_d
    const-string/jumbo v0, "task_description_color"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 2559
    if-eqz v0, :cond_1a

    .line 2560
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager$TaskDescription;->setPrimaryColor(I)V

    .line 2562
    :cond_1a
    const-string/jumbo v0, "task_description_color_background"

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 2564
    if-eqz v0, :cond_26

    .line 2565
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColor(I)V

    .line 2567
    :cond_26
    const-string/jumbo v0, "task_description_color_background_floating"

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 2569
    if-eqz v0, :cond_32

    .line 2570
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColorFloating(I)V

    .line 2572
    :cond_32
    const-string/jumbo v0, "task_description_icon_filename"

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2574
    if-eqz v0, :cond_3e

    .line 2575
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager$TaskDescription;->setIconFilename(Ljava/lang/String;)V

    .line 2577
    :cond_3e
    const-string/jumbo v0, "task_description_icon_resource"

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 2579
    const-string/jumbo v2, "task_description_icon_package"

    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2581
    if-eqz v0, :cond_57

    if-eqz p1, :cond_57

    .line 2582
    invoke-static {p1, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$TaskDescription;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 2585
    :cond_57
    return-void
.end method

.method public blacklist saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2528
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 2529
    const-string/jumbo v0, "task_description_label"

    iget-object v2, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2531
    :cond_d
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    if-eqz v0, :cond_19

    .line 2532
    const-string/jumbo v0, "task_description_color"

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2534
    :cond_19
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    if-eqz v0, :cond_25

    .line 2535
    const-string/jumbo v0, "task_description_color_background"

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2537
    :cond_25
    iget v0, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    if-eqz v0, :cond_31

    .line 2538
    const-string/jumbo v0, "task_description_color_background_floating"

    iget v2, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeIntHex(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2541
    :cond_31
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    if-eqz v0, :cond_3d

    .line 2542
    const-string/jumbo v0, "task_description_icon_filename"

    iget-object v2, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2544
    :cond_3d
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_62

    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_62

    .line 2545
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v0

    const-string/jumbo v2, "task_description_icon_resource"

    invoke-interface {p1, v1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2546
    iget-object v0, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    .line 2547
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v0

    .line 2546
    const-string/jumbo v2, "task_description_icon_package"

    invoke-interface {p1, v1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2549
    :cond_62
    return-void
.end method

.method public greylist-max-o setBackgroundColor(I)V
    .registers 4

    .line 2231
    if-eqz p1, :cond_13

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_b

    goto :goto_13

    .line 2232
    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "A TaskDescription\'s background color should be opaque"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2234
    :cond_13
    :goto_13
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    .line 2235
    return-void
.end method

.method public blacklist setBackgroundColorFloating(I)V
    .registers 4

    .line 2243
    if-eqz p1, :cond_13

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_b

    goto :goto_13

    .line 2244
    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "A TaskDescription\'s background color floating should be opaque"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2247
    :cond_13
    :goto_13
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    .line 2248
    return-void
.end method

.method public blacklist setEnsureNavigationBarContrastWhenTransparent(Z)V
    .registers 2

    .line 2501
    iput-boolean p1, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    .line 2503
    return-void
.end method

.method public blacklist setEnsureStatusBarContrastWhenTransparent(Z)V
    .registers 2

    .line 2472
    iput-boolean p1, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    .line 2473
    return-void
.end method

.method public blacklist setIcon(Landroid/graphics/drawable/Icon;)V
    .registers 2

    .line 2269
    iput-object p1, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    .line 2270
    return-void
.end method

.method public greylist-max-o setIconFilename(Ljava/lang/String;)V
    .registers 2

    .line 2278
    iput-object p1, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    .line 2279
    if-eqz p1, :cond_7

    .line 2281
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    .line 2283
    :cond_7
    return-void
.end method

.method public greylist-max-o setLabel(Ljava/lang/String;)V
    .registers 2

    .line 2210
    iput-object p1, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    .line 2211
    return-void
.end method

.method public blacklist setMinHeight(I)V
    .registers 2

    .line 2309
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    .line 2310
    return-void
.end method

.method public blacklist setMinWidth(I)V
    .registers 2

    .line 2300
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    .line 2301
    return-void
.end method

.method public greylist-max-o setNavigationBarColor(I)V
    .registers 2

    .line 2261
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    .line 2262
    return-void
.end method

.method public greylist-max-o setPrimaryColor(I)V
    .registers 4

    .line 2219
    if-eqz p1, :cond_13

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_b

    goto :goto_13

    .line 2220
    :cond_b
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "A TaskDescription\'s primary color should be opaque"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2222
    :cond_13
    :goto_13
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    .line 2223
    return-void
.end method

.method public blacklist setResizeMode(I)V
    .registers 2

    .line 2291
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    .line 2292
    return-void
.end method

.method public greylist-max-o setStatusBarColor(I)V
    .registers 2

    .line 2254
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    .line 2255
    return-void
.end method

.method public blacklist setSystemBarsAppearance(I)V
    .registers 2

    .line 2479
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mSystemBarsAppearance:I

    .line 2480
    return-void
.end method

.method public blacklist setTopOpaqueSystemBarsAppearance(I)V
    .registers 2

    .line 2486
    iput p1, p0, Landroid/app/ActivityManager$TaskDescription;->mTopOpaqueSystemBarsAppearance:I

    .line 2487
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 2661
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

    .line 2665
    iget-boolean v1, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    const-string v2, " (contrast when transparent)"

    const-string v3, ""

    if-eqz v1, :cond_57

    move-object v1, v2

    goto :goto_58

    .line 2666
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

    .line 2667
    iget-boolean v1, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    if-eqz v1, :cond_6d

    .line 2668
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

    .line 2669
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

    const-string v1, " systemBarsAppearance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mSystemBarsAppearance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topOpaqueSystemBarsAppearance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ActivityManager$TaskDescription;->mTopOpaqueSystemBarsAppearance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2661
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 2594
    iget-object p2, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_a

    .line 2595
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12

    .line 2597
    :cond_a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2598
    iget-object p2, p0, Landroid/app/ActivityManager$TaskDescription;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2600
    :goto_12
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object p2

    .line 2601
    iget-object v2, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    if-eqz v2, :cond_2c

    if-eqz p2, :cond_23

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-eqz p2, :cond_23

    goto :goto_2c

    .line 2606
    :cond_23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2607
    iget-object p2, p0, Landroid/app/ActivityManager$TaskDescription;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p2, p1, v1}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2f

    .line 2604
    :cond_2c
    :goto_2c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2609
    :goto_2f
    iget p2, p0, Landroid/app/ActivityManager$TaskDescription;->mColorPrimary:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2610
    iget p2, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackground:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2611
    iget p2, p0, Landroid/app/ActivityManager$TaskDescription;->mStatusBarColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2612
    iget p2, p0, Landroid/app/ActivityManager$TaskDescription;->mNavigationBarColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2613
    iget p2, p0, Landroid/app/ActivityManager$TaskDescription;->mSystemBarsAppearance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2614
    iget p2, p0, Landroid/app/ActivityManager$TaskDescription;->mTopOpaqueSystemBarsAppearance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2615
    iget-boolean p2, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureStatusBarContrastWhenTransparent:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2616
    iget-boolean p2, p0, Landroid/app/ActivityManager$TaskDescription;->mEnsureNavigationBarContrastWhenTransparent:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2617
    iget p2, p0, Landroid/app/ActivityManager$TaskDescription;->mResizeMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2618
    iget p2, p0, Landroid/app/ActivityManager$TaskDescription;->mMinWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2619
    iget p2, p0, Landroid/app/ActivityManager$TaskDescription;->mMinHeight:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2620
    iget-object p2, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    if-nez p2, :cond_6e

    .line 2621
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_76

    .line 2623
    :cond_6e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2624
    iget-object p2, p0, Landroid/app/ActivityManager$TaskDescription;->mIconFilename:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2626
    :goto_76
    iget p2, p0, Landroid/app/ActivityManager$TaskDescription;->mColorBackgroundFloating:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2627
    return-void
.end method
