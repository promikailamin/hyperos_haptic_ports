.class public Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;
.super Ljava/lang/Object;
.source "ScreenshotHelper.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/ScreenshotHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenshotRequest"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBitmapBundle:Landroid/os/Bundle;

.field private blacklist mBoundsInScreen:Landroid/graphics/Rect;

.field private blacklist mHasNavBar:Z

.field private blacklist mHasStatusBar:Z

.field private blacklist mInsets:Landroid/graphics/Insets;

.field private blacklist mSource:I

.field private blacklist mTaskId:I

.field private blacklist mTopComponent:Landroid/content/ComponentName;

.field private blacklist mUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 155
    new-instance v0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest$1;

    invoke-direct {v0}, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest$1;-><init>()V

    sput-object v0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(ILandroid/os/Bundle;Landroid/graphics/Rect;Landroid/graphics/Insets;IILandroid/content/ComponentName;)V
    .registers 8
    .param p1, "source"    # I
    .param p2, "bitmapBundle"    # Landroid/os/Bundle;
    .param p3, "boundsInScreen"    # Landroid/graphics/Rect;
    .param p4, "insets"    # Landroid/graphics/Insets;
    .param p5, "taskId"    # I
    .param p6, "userId"    # I
    .param p7, "topComponent"    # Landroid/content/ComponentName;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mSource:I

    .line 72
    iput-object p2, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mBitmapBundle:Landroid/os/Bundle;

    .line 73
    iput-object p3, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mBoundsInScreen:Landroid/graphics/Rect;

    .line 74
    iput-object p4, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mInsets:Landroid/graphics/Insets;

    .line 75
    iput p5, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mTaskId:I

    .line 76
    iput p6, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mUserId:I

    .line 77
    iput-object p7, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mTopComponent:Landroid/content/ComponentName;

    .line 78
    return-void
.end method

.method constructor blacklist <init>(IZZ)V
    .registers 4
    .param p1, "source"    # I
    .param p2, "hasStatus"    # Z
    .param p3, "hasNav"    # Z

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mSource:I

    .line 65
    iput-boolean p2, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mHasStatusBar:Z

    .line 66
    iput-boolean p3, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mHasNavBar:Z

    .line 67
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mSource:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mHasStatusBar:Z

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mHasNavBar:Z

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_66

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mBitmapBundle:Landroid/os/Bundle;

    .line 87
    const-class v0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mBoundsInScreen:Landroid/graphics/Rect;

    .line 88
    const-class v0, Landroid/graphics/Insets;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/graphics/Insets;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Insets;

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mInsets:Landroid/graphics/Insets;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mTaskId:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mUserId:I

    .line 91
    const-class v0, Landroid/content/ComponentName;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mTopComponent:Landroid/content/ComponentName;

    .line 93
    :cond_66
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBitmapBundle()Landroid/os/Bundle;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mBitmapBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getBoundsInScreen()Landroid/graphics/Rect;
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mBoundsInScreen:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getHasNavBar()Z
    .registers 2

    .line 104
    iget-boolean v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mHasNavBar:Z

    return v0
.end method

.method public blacklist getHasStatusBar()Z
    .registers 2

    .line 100
    iget-boolean v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mHasStatusBar:Z

    return v0
.end method

.method public blacklist getInsets()Landroid/graphics/Insets;
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public blacklist getSource()I
    .registers 2

    .line 96
    iget v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mSource:I

    return v0
.end method

.method public blacklist getTaskId()I
    .registers 2

    .line 120
    iget v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mTaskId:I

    return v0
.end method

.method public blacklist getTopComponent()Landroid/content/ComponentName;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mTopComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public blacklist getUserId()I
    .registers 2

    .line 125
    iget v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mUserId:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 139
    iget v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget-boolean v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mHasStatusBar:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 141
    iget-boolean v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mHasNavBar:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 142
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mBitmapBundle:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-nez v0, :cond_18

    .line 143
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3a

    .line 145
    :cond_18
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mBitmapBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 147
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 148
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mInsets:Landroid/graphics/Insets;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 149
    iget v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mTaskId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper$ScreenshotRequest;->mTopComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 153
    :goto_3a
    return-void
.end method
