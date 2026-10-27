.class public final Landroid/hardware/input/KeyGlyphMap;
.super Ljava/lang/Object;
.source "KeyGlyphMap.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/KeyGlyphMap$KeyCombination;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/input/KeyGlyphMap;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "KeyGlyphMap"


# instance fields
.field private final blacklist mComponentName:Landroid/content/ComponentName;

.field private final blacklist mFunctionRowKeys:[I

.field private final blacklist mHardwareShortcuts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/hardware/input/KeyGlyphMap$KeyCombination;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mKeyGlyphs:Landroid/util/SparseIntArray;

.field private final blacklist mModifierGlyphs:Landroid/util/SparseIntArray;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 59
    new-instance v0, Landroid/hardware/input/KeyGlyphMap$1;

    invoke-direct {v0}, Landroid/hardware/input/KeyGlyphMap$1;-><init>()V

    sput-object v0, Landroid/hardware/input/KeyGlyphMap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/ComponentName;Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;[ILjava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/util/SparseIntArray;",
            "Landroid/util/SparseIntArray;",
            "[I",
            "Ljava/util/Map<",
            "Landroid/hardware/input/KeyGlyphMap$KeyCombination;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Landroid/hardware/input/KeyGlyphMap;->mComponentName:Landroid/content/ComponentName;

    .line 75
    iput-object p2, p0, Landroid/hardware/input/KeyGlyphMap;->mKeyGlyphs:Landroid/util/SparseIntArray;

    .line 76
    iput-object p3, p0, Landroid/hardware/input/KeyGlyphMap;->mModifierGlyphs:Landroid/util/SparseIntArray;

    .line 77
    iput-object p4, p0, Landroid/hardware/input/KeyGlyphMap;->mFunctionRowKeys:[I

    .line 78
    iput-object p5, p0, Landroid/hardware/input/KeyGlyphMap;->mHardwareShortcuts:Ljava/util/Map;

    .line 79
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/hardware/input/KeyGlyphMap;->mComponentName:Landroid/content/ComponentName;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseIntArray()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/KeyGlyphMap;->mKeyGlyphs:Landroid/util/SparseIntArray;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseIntArray()Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/KeyGlyphMap;->mModifierGlyphs:Landroid/util/SparseIntArray;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/hardware/input/KeyGlyphMap;->mFunctionRowKeys:[I

    .line 86
    iget-object v0, p0, Landroid/hardware/input/KeyGlyphMap;->mFunctionRowKeys:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Landroid/hardware/input/KeyGlyphMap;->mHardwareShortcuts:Ljava/util/Map;

    .line 88
    iget-object v0, p0, Landroid/hardware/input/KeyGlyphMap;->mHardwareShortcuts:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/hardware/input/KeyGlyphMap$KeyCombination;

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 90
    return-void
.end method

.method private blacklist getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 7

    .line 228
    const-string v0, "KeyGlyphMap"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 230
    const/4 v1, 0x0

    :try_start_7
    iget-object v2, p0, Landroid/hardware/input/KeyGlyphMap;->mComponentName:Landroid/content/ComponentName;

    const v3, 0xc0080

    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 234
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p1

    .line 235
    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_1a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_1a} :catch_35
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_1a} :catch_1b

    return-object p1

    .line 238
    :catch_1b
    move-exception p1

    .line 239
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Resource not found for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Landroid/hardware/input/KeyGlyphMap;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    .line 236
    :catch_35
    move-exception p1

    .line 237
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Package name not found for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Landroid/hardware/input/KeyGlyphMap;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    nop

    .line 241
    :goto_4f
    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDrawableForKeycode(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 192
    iget-object v0, p0, Landroid/hardware/input/KeyGlyphMap;->mKeyGlyphs:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/hardware/input/KeyGlyphMap;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getDrawableForModifier(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 201
    const/4 v0, 0x0

    sparse-switch p2, :sswitch_data_28

    .line 212
    move p2, v0

    goto :goto_1d

    .line 210
    :sswitch_6
    const/high16 p2, 0x200000

    goto :goto_1d

    .line 207
    :sswitch_9
    const/16 p2, 0x8

    goto :goto_1d

    .line 202
    :sswitch_c
    const/high16 p2, 0x10000

    goto :goto_1d

    .line 211
    :sswitch_f
    const/high16 p2, 0x400000

    goto :goto_1d

    .line 209
    :sswitch_12
    const/high16 p2, 0x100000

    goto :goto_1d

    .line 203
    :sswitch_15
    const/16 p2, 0x1000

    goto :goto_1d

    .line 208
    :sswitch_18
    const/4 p2, 0x4

    goto :goto_1d

    .line 206
    :sswitch_1a
    const/4 p2, 0x1

    goto :goto_1d

    .line 204
    :sswitch_1c
    const/4 p2, 0x2

    .line 214
    :goto_1d
    iget-object v1, p0, Landroid/hardware/input/KeyGlyphMap;->mModifierGlyphs:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/hardware/input/KeyGlyphMap;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :sswitch_data_28
    .sparse-switch
        0x39 -> :sswitch_1c
        0x3a -> :sswitch_1c
        0x3b -> :sswitch_1a
        0x3c -> :sswitch_1a
        0x3f -> :sswitch_18
        0x71 -> :sswitch_15
        0x72 -> :sswitch_15
        0x73 -> :sswitch_12
        0x74 -> :sswitch_f
        0x75 -> :sswitch_c
        0x76 -> :sswitch_c
        0x77 -> :sswitch_9
        0x8f -> :sswitch_6
    .end sparse-switch
.end method

.method public blacklist getDrawableForModifierState(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 223
    iget-object v0, p0, Landroid/hardware/input/KeyGlyphMap;->mModifierGlyphs:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroid/hardware/input/KeyGlyphMap;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getFunctionRowKeys()[I
    .registers 2

    .line 172
    iget-object v0, p0, Landroid/hardware/input/KeyGlyphMap;->mFunctionRowKeys:[I

    return-object v0
.end method

.method public blacklist getHardwareShortcuts()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/hardware/input/KeyGlyphMap$KeyCombination;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Landroid/hardware/input/KeyGlyphMap;->mHardwareShortcuts:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyGlyphMap{mComponentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/KeyGlyphMap;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mKeyGlyphs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/KeyGlyphMap;->mKeyGlyphs:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mModifierGlyphs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/KeyGlyphMap;->mModifierGlyphs:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFunctionRowKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/KeyGlyphMap;->mFunctionRowKeys:[I

    .line 250
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHardwareShortcuts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/KeyGlyphMap;->mHardwareShortcuts:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 94
    iget-object p2, p0, Landroid/hardware/input/KeyGlyphMap;->mComponentName:Landroid/content/ComponentName;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 95
    iget-object p2, p0, Landroid/hardware/input/KeyGlyphMap;->mKeyGlyphs:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSparseIntArray(Landroid/util/SparseIntArray;)V

    .line 96
    iget-object p2, p0, Landroid/hardware/input/KeyGlyphMap;->mModifierGlyphs:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSparseIntArray(Landroid/util/SparseIntArray;)V

    .line 97
    iget-object p2, p0, Landroid/hardware/input/KeyGlyphMap;->mFunctionRowKeys:[I

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object p2, p0, Landroid/hardware/input/KeyGlyphMap;->mFunctionRowKeys:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 99
    iget-object p2, p0, Landroid/hardware/input/KeyGlyphMap;->mHardwareShortcuts:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-object p2, p0, Landroid/hardware/input/KeyGlyphMap;->mHardwareShortcuts:Ljava/util/Map;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 101
    return-void
.end method
