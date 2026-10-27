.class public Landroid/magicpointer/MagicPointer;
.super Ljava/lang/Object;
.source "MagicPointer.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/magicpointer/MagicPointer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist TYPE_MAGIC_CELL:I = 0xbb9

.field public static final blacklist TYPE_MAGIC_DEFAULT:I = 0xbb8

.field public static final blacklist TYPE_MAGIC_HORIZONTAL_ARROW:I = 0xbba

.field public static final blacklist TYPE_MAGIC_SPOT:I = 0xbbb

.field public static final blacklist TYPE_MAGIC_TEXT:I = 0xbbc

.field public static final blacklist TYPE_MAGIC_TOP_LEFT_ARROW:I = 0xbbe

.field public static final blacklist TYPE_MAGIC_TOP_RIGHT_ARROW:I = 0xbbf

.field public static final blacklist TYPE_MAGIC_VERTICAL_ARROW:I = 0xbbd


# instance fields
.field public blacklist mFeedbackColor:I

.field private blacklist mID:I

.field private blacklist mIsEnable:Z

.field private blacklist mIsWrapped:Z

.field public blacklist mMagicPoint:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPkg:Ljava/lang/String;

.field private blacklist mPoint:Landroid/graphics/Point;

.field public blacklist mPointerHide:Z

.field public blacklist mPointerShape:Landroid/graphics/Bitmap;

.field public blacklist mPointerShapeType:I

.field private blacklist mRadius:F

.field private blacklist mRect:Landroid/graphics/Rect;

.field private blacklist mViewVisibility:I

.field private blacklist mWindowId:I

.field public blacklist mXOffset:I

.field public blacklist mYOffset:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 289
    new-instance v0, Landroid/magicpointer/MagicPointer$1;

    invoke-direct {v0}, Landroid/magicpointer/MagicPointer$1;-><init>()V

    sput-object v0, Landroid/magicpointer/MagicPointer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0xbb8

    iput v0, p0, Landroid/magicpointer/MagicPointer;->mPointerShapeType:I

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/magicpointer/MagicPointer;->mMagicPoint:Ljava/util/ArrayList;

    .line 44
    return-void
.end method

.method public constructor blacklist <init>(Landroid/graphics/Rect;Landroid/graphics/Point;FIIILjava/lang/String;ZZZLandroid/graphics/Bitmap;Ljava/util/ArrayList;II)V
    .registers 16
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "point"    # Landroid/graphics/Point;
    .param p3, "radius"    # F
    .param p4, "viewVisibility"    # I
    .param p5, "windowId"    # I
    .param p6, "ID"    # I
    .param p7, "pkg"    # Ljava/lang/String;
    .param p8, "isEnable"    # Z
    .param p9, "isWrapped"    # Z
    .param p10, "isPointerHide"    # Z
    .param p11, "pointerShape"    # Landroid/graphics/Bitmap;
    .param p13, "xOffset"    # I
    .param p14, "yOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Point;",
            "FIII",
            "Ljava/lang/String;",
            "ZZZ",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Point;",
            ">;II)V"
        }
    .end annotation

    .line 48
    .local p12, "magicPoint":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0xbb8

    iput v0, p0, Landroid/magicpointer/MagicPointer;->mPointerShapeType:I

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/magicpointer/MagicPointer;->mMagicPoint:Ljava/util/ArrayList;

    .line 49
    iput-object p1, p0, Landroid/magicpointer/MagicPointer;->mRect:Landroid/graphics/Rect;

    .line 50
    iput-object p2, p0, Landroid/magicpointer/MagicPointer;->mPoint:Landroid/graphics/Point;

    .line 51
    iput p3, p0, Landroid/magicpointer/MagicPointer;->mRadius:F

    .line 52
    iput p4, p0, Landroid/magicpointer/MagicPointer;->mViewVisibility:I

    .line 53
    iput p5, p0, Landroid/magicpointer/MagicPointer;->mWindowId:I

    .line 54
    iput p6, p0, Landroid/magicpointer/MagicPointer;->mID:I

    .line 55
    iput-object p7, p0, Landroid/magicpointer/MagicPointer;->mPkg:Ljava/lang/String;

    .line 56
    iput-boolean p8, p0, Landroid/magicpointer/MagicPointer;->mIsEnable:Z

    .line 57
    iput-boolean p9, p0, Landroid/magicpointer/MagicPointer;->mIsWrapped:Z

    .line 58
    iput-boolean p10, p0, Landroid/magicpointer/MagicPointer;->mPointerHide:Z

    .line 59
    iput-object p11, p0, Landroid/magicpointer/MagicPointer;->mPointerShape:Landroid/graphics/Bitmap;

    .line 60
    iput-object p12, p0, Landroid/magicpointer/MagicPointer;->mMagicPoint:Ljava/util/ArrayList;

    .line 61
    iput p13, p0, Landroid/magicpointer/MagicPointer;->mXOffset:I

    .line 62
    iput p14, p0, Landroid/magicpointer/MagicPointer;->mYOffset:I

    .line 63
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/16 v0, 0xbb8

    iput v0, p0, Landroid/magicpointer/MagicPointer;->mPointerShapeType:I

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/magicpointer/MagicPointer;->mMagicPoint:Ljava/util/ArrayList;

    .line 205
    invoke-virtual {p0, p1}, Landroid/magicpointer/MagicPointer;->readFromParcel(Landroid/os/Parcel;)V

    .line 206
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 259
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 260
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_36

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_36

    .line 261
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/magicpointer/MagicPointer;

    .line 262
    .local v2, "that":Landroid/magicpointer/MagicPointer;
    iget v3, p0, Landroid/magicpointer/MagicPointer;->mWindowId:I

    iget v4, v2, Landroid/magicpointer/MagicPointer;->mWindowId:I

    if-ne v3, v4, :cond_34

    iget v3, p0, Landroid/magicpointer/MagicPointer;->mID:I

    iget v4, v2, Landroid/magicpointer/MagicPointer;->mID:I

    if-ne v3, v4, :cond_34

    iget-object v3, p0, Landroid/magicpointer/MagicPointer;->mRect:Landroid/graphics/Rect;

    iget-object v4, v2, Landroid/magicpointer/MagicPointer;->mRect:Landroid/graphics/Rect;

    .line 264
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget v3, p0, Landroid/magicpointer/MagicPointer;->mRadius:F

    iget v4, v2, Landroid/magicpointer/MagicPointer;->mRadius:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_34

    goto :goto_35

    :cond_34
    move v0, v1

    .line 262
    :goto_35
    return v0

    .line 260
    .end local v2    # "that":Landroid/magicpointer/MagicPointer;
    :cond_36
    :goto_36
    return v1
.end method

.method public blacklist getFeedbackColor()I
    .registers 2

    .line 197
    iget v0, p0, Landroid/magicpointer/MagicPointer;->mFeedbackColor:I

    return v0
.end method

.method public blacklist getID()I
    .registers 2

    .line 106
    iget v0, p0, Landroid/magicpointer/MagicPointer;->mID:I

    return v0
.end method

.method public blacklist getMagicPoint()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Landroid/magicpointer/MagicPointer;->mMagicPoint:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getPkg()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Landroid/magicpointer/MagicPointer;->mPkg:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPoint()Landroid/graphics/Point;
    .registers 2

    .line 82
    iget-object v0, p0, Landroid/magicpointer/MagicPointer;->mPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public blacklist getPointerShape()Landroid/graphics/Bitmap;
    .registers 2

    .line 157
    iget-object v0, p0, Landroid/magicpointer/MagicPointer;->mPointerShape:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public blacklist getPointerShapeType()I
    .registers 2

    .line 165
    iget v0, p0, Landroid/magicpointer/MagicPointer;->mPointerShapeType:I

    return v0
.end method

.method public blacklist getRadius()F
    .registers 2

    .line 118
    iget v0, p0, Landroid/magicpointer/MagicPointer;->mRadius:F

    return v0
.end method

.method public blacklist getRect()Landroid/graphics/Rect;
    .registers 2

    .line 74
    iget-object v0, p0, Landroid/magicpointer/MagicPointer;->mRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getViewVisibility()I
    .registers 2

    .line 125
    iget v0, p0, Landroid/magicpointer/MagicPointer;->mViewVisibility:I

    return v0
.end method

.method public blacklist getVisibility()I
    .registers 2

    .line 90
    iget v0, p0, Landroid/magicpointer/MagicPointer;->mViewVisibility:I

    return v0
.end method

.method public blacklist getWindowId()I
    .registers 2

    .line 98
    iget v0, p0, Landroid/magicpointer/MagicPointer;->mWindowId:I

    return v0
.end method

.method public blacklist getXOffset()I
    .registers 2

    .line 173
    iget v0, p0, Landroid/magicpointer/MagicPointer;->mXOffset:I

    return v0
.end method

.method public blacklist getYOffset()I
    .registers 2

    .line 181
    iget v0, p0, Landroid/magicpointer/MagicPointer;->mYOffset:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 254
    iget v0, p0, Landroid/magicpointer/MagicPointer;->mID:I

    return v0
.end method

.method public blacklist isEnable()Z
    .registers 2

    .line 133
    iget-boolean v0, p0, Landroid/magicpointer/MagicPointer;->mIsEnable:Z

    return v0
.end method

.method public blacklist isEnabled()Z
    .registers 2

    .line 114
    iget-boolean v0, p0, Landroid/magicpointer/MagicPointer;->mIsEnable:Z

    return v0
.end method

.method public blacklist isPointerHide()Z
    .registers 2

    .line 149
    iget-boolean v0, p0, Landroid/magicpointer/MagicPointer;->mPointerHide:Z

    return v0
.end method

.method public blacklist isWrapped()Z
    .registers 2

    .line 141
    iget-boolean v0, p0, Landroid/magicpointer/MagicPointer;->mIsWrapped:Z

    return v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 234
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/magicpointer/MagicPointer;->mRect:Landroid/graphics/Rect;

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/magicpointer/MagicPointer;->mRadius:F

    .line 236
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, Landroid/magicpointer/MagicPointer;->mPoint:Landroid/graphics/Point;

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/magicpointer/MagicPointer;->mViewVisibility:I

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/magicpointer/MagicPointer;->mWindowId:I

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/magicpointer/MagicPointer;->mID:I

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/magicpointer/MagicPointer;->mPkg:Ljava/lang/String;

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/magicpointer/MagicPointer;->mIsEnable:Z

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/magicpointer/MagicPointer;->mIsWrapped:Z

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/magicpointer/MagicPointer;->mPointerHide:Z

    .line 244
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/magicpointer/MagicPointer;->mPointerShape:Landroid/graphics/Bitmap;

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/magicpointer/MagicPointer;->mPointerShapeType:I

    .line 246
    iget-object v0, p0, Landroid/magicpointer/MagicPointer;->mMagicPoint:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/magicpointer/MagicPointer;->mXOffset:I

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/magicpointer/MagicPointer;->mYOffset:I

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/magicpointer/MagicPointer;->mFeedbackColor:I

    .line 250
    return-void
.end method

.method public blacklist setEnable(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 137
    iput-boolean p1, p0, Landroid/magicpointer/MagicPointer;->mIsEnable:Z

    .line 138
    return-void
.end method

.method public blacklist setFeedbackColor(I)V
    .registers 2
    .param p1, "feedbackColor"    # I

    .line 201
    iput p1, p0, Landroid/magicpointer/MagicPointer;->mFeedbackColor:I

    .line 202
    return-void
.end method

.method public blacklist setID(I)V
    .registers 2
    .param p1, "mID"    # I

    .line 110
    iput p1, p0, Landroid/magicpointer/MagicPointer;->mID:I

    .line 111
    return-void
.end method

.method public blacklist setMagicPoint(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .line 193
    .local p1, "magicPoint":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    iput-object p1, p0, Landroid/magicpointer/MagicPointer;->mMagicPoint:Ljava/util/ArrayList;

    .line 194
    return-void
.end method

.method public blacklist setPkg(Ljava/lang/String;)V
    .registers 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 70
    iput-object p1, p0, Landroid/magicpointer/MagicPointer;->mPkg:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public blacklist setPoint(Landroid/graphics/Point;)V
    .registers 2
    .param p1, "mPoint"    # Landroid/graphics/Point;

    .line 86
    iput-object p1, p0, Landroid/magicpointer/MagicPointer;->mPoint:Landroid/graphics/Point;

    .line 87
    return-void
.end method

.method public blacklist setPointerHide(Z)V
    .registers 2
    .param p1, "pointerHide"    # Z

    .line 153
    iput-boolean p1, p0, Landroid/magicpointer/MagicPointer;->mPointerHide:Z

    .line 154
    return-void
.end method

.method public blacklist setPointerShape(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "pointerShape"    # Landroid/graphics/Bitmap;

    .line 161
    iput-object p1, p0, Landroid/magicpointer/MagicPointer;->mPointerShape:Landroid/graphics/Bitmap;

    .line 162
    return-void
.end method

.method public blacklist setPointerShapeType(I)V
    .registers 2
    .param p1, "pointerShapeType"    # I

    .line 169
    iput p1, p0, Landroid/magicpointer/MagicPointer;->mPointerShapeType:I

    .line 170
    return-void
.end method

.method public blacklist setRadius(F)V
    .registers 2
    .param p1, "radius"    # F

    .line 121
    iput p1, p0, Landroid/magicpointer/MagicPointer;->mRadius:F

    .line 122
    return-void
.end method

.method public blacklist setRect(Landroid/graphics/Rect;)V
    .registers 2
    .param p1, "mRect"    # Landroid/graphics/Rect;

    .line 78
    iput-object p1, p0, Landroid/magicpointer/MagicPointer;->mRect:Landroid/graphics/Rect;

    .line 79
    return-void
.end method

.method public blacklist setViewVisibility(I)V
    .registers 2
    .param p1, "viewVisibility"    # I

    .line 129
    iput p1, p0, Landroid/magicpointer/MagicPointer;->mViewVisibility:I

    .line 130
    return-void
.end method

.method public blacklist setVisibility(I)V
    .registers 2
    .param p1, "viewVisibility"    # I

    .line 94
    iput p1, p0, Landroid/magicpointer/MagicPointer;->mViewVisibility:I

    .line 95
    return-void
.end method

.method public blacklist setWindowId(I)V
    .registers 2
    .param p1, "mWindowId"    # I

    .line 102
    iput p1, p0, Landroid/magicpointer/MagicPointer;->mWindowId:I

    .line 103
    return-void
.end method

.method public blacklist setWrapped(Z)V
    .registers 2
    .param p1, "wrapped"    # Z

    .line 145
    iput-boolean p1, p0, Landroid/magicpointer/MagicPointer;->mIsWrapped:Z

    .line 146
    return-void
.end method

.method public blacklist setXOffset(I)V
    .registers 2
    .param p1, "xOffset"    # I

    .line 177
    iput p1, p0, Landroid/magicpointer/MagicPointer;->mXOffset:I

    .line 178
    return-void
.end method

.method public blacklist setYOffset(I)V
    .registers 2
    .param p1, "yOffset"    # I

    .line 185
    iput p1, p0, Landroid/magicpointer/MagicPointer;->mYOffset:I

    .line 186
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MagicPointer{mRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/magicpointer/MagicPointer;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/magicpointer/MagicPointer;->mPoint:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/magicpointer/MagicPointer;->mRadius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mViewVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/magicpointer/MagicPointer;->mViewVisibility:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWindowId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/magicpointer/MagicPointer;->mWindowId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/magicpointer/MagicPointer;->mID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPkg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/magicpointer/MagicPointer;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/magicpointer/MagicPointer;->mIsEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsWrapped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/magicpointer/MagicPointer;->mIsWrapped:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPointerHide="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/magicpointer/MagicPointer;->mPointerHide:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPointerShape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/magicpointer/MagicPointer;->mPointerShape:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMagicPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/magicpointer/MagicPointer;->mMagicPoint:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mXOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/magicpointer/MagicPointer;->mXOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mYOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/magicpointer/MagicPointer;->mYOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFeedbackColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/magicpointer/MagicPointer;->mFeedbackColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 215
    iget-object v0, p0, Landroid/magicpointer/MagicPointer;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 216
    iget v0, p0, Landroid/magicpointer/MagicPointer;->mRadius:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 217
    iget-object v0, p0, Landroid/magicpointer/MagicPointer;->mPoint:Landroid/graphics/Point;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 218
    iget v0, p0, Landroid/magicpointer/MagicPointer;->mViewVisibility:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget v0, p0, Landroid/magicpointer/MagicPointer;->mWindowId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget v0, p0, Landroid/magicpointer/MagicPointer;->mID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget-object v0, p0, Landroid/magicpointer/MagicPointer;->mPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-boolean v0, p0, Landroid/magicpointer/MagicPointer;->mIsEnable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 223
    iget-boolean v0, p0, Landroid/magicpointer/MagicPointer;->mIsWrapped:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 224
    iget-boolean v0, p0, Landroid/magicpointer/MagicPointer;->mPointerHide:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 225
    iget-object v0, p0, Landroid/magicpointer/MagicPointer;->mPointerShape:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 226
    iget v0, p0, Landroid/magicpointer/MagicPointer;->mPointerShapeType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    iget-object v0, p0, Landroid/magicpointer/MagicPointer;->mMagicPoint:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 228
    iget v0, p0, Landroid/magicpointer/MagicPointer;->mXOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget v0, p0, Landroid/magicpointer/MagicPointer;->mYOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget v0, p0, Landroid/magicpointer/MagicPointer;->mFeedbackColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    return-void
.end method
