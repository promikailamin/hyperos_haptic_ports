.class public final Landroid/window/TaskFragmentCreationParams$Builder;
.super Ljava/lang/Object;
.source "TaskFragmentCreationParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TaskFragmentCreationParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mFragmentToken:Landroid/os/IBinder;

.field private final blacklist mInitialBounds:Landroid/graphics/Rect;

.field private final blacklist mOrganizer:Landroid/window/TaskFragmentOrganizerToken;

.field private final blacklist mOwnerToken:Landroid/os/IBinder;

.field private blacklist mPairedActivityToken:Landroid/os/IBinder;

.field private blacklist mPairedPrimaryFragmentToken:Landroid/os/IBinder;

.field private blacklist mScale:F

.field private blacklist mWindowingMode:I


# direct methods
.method public constructor blacklist <init>(Landroid/window/TaskFragmentOrganizerToken;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "organizer"    # Landroid/window/TaskFragmentOrganizerToken;
    .param p2, "fragmentToken"    # Landroid/os/IBinder;
    .param p3, "ownerToken"    # Landroid/os/IBinder;

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mInitialBounds:Landroid/graphics/Rect;

    .line 252
    const/4 v0, 0x0

    iput v0, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mWindowingMode:I

    .line 262
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mScale:F

    .line 267
    iput-object p1, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mOrganizer:Landroid/window/TaskFragmentOrganizerToken;

    .line 268
    iput-object p2, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mFragmentToken:Landroid/os/IBinder;

    .line 269
    iput-object p3, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mOwnerToken:Landroid/os/IBinder;

    .line 270
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/window/TaskFragmentCreationParams;
    .registers 13

    .line 337
    new-instance v11, Landroid/window/TaskFragmentCreationParams;

    iget-object v1, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mOrganizer:Landroid/window/TaskFragmentOrganizerToken;

    iget-object v2, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mFragmentToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mOwnerToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mInitialBounds:Landroid/graphics/Rect;

    iget v5, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mWindowingMode:I

    iget-object v6, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mPairedPrimaryFragmentToken:Landroid/os/IBinder;

    iget-object v7, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mPairedActivityToken:Landroid/os/IBinder;

    iget v8, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mScale:F

    .line 339
    invoke-static {}, Landroid/app/ActivityThread;->isEmbedded()Z

    move-result v9

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroid/window/TaskFragmentCreationParams;-><init>(Landroid/window/TaskFragmentOrganizerToken;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/graphics/Rect;ILandroid/os/IBinder;Landroid/os/IBinder;FZLandroid/window/TaskFragmentCreationParams-IA;)V

    .line 337
    return-object v11
.end method

.method public blacklist setInitialBounds(Landroid/graphics/Rect;)Landroid/window/TaskFragmentCreationParams$Builder;
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 275
    iget-object v0, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mInitialBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 276
    return-object p0
.end method

.method public blacklist setPairedActivityToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentCreationParams$Builder;
    .registers 2
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .line 322
    iput-object p1, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mPairedActivityToken:Landroid/os/IBinder;

    .line 323
    return-object p0
.end method

.method public blacklist setPairedPrimaryFragmentToken(Landroid/os/IBinder;)Landroid/window/TaskFragmentCreationParams$Builder;
    .registers 2
    .param p1, "fragmentToken"    # Landroid/os/IBinder;

    .line 302
    iput-object p1, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mPairedPrimaryFragmentToken:Landroid/os/IBinder;

    .line 303
    return-object p0
.end method

.method public blacklist setScale(F)Landroid/window/TaskFragmentCreationParams$Builder;
    .registers 2
    .param p1, "scale"    # F

    .line 329
    iput p1, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mScale:F

    .line 330
    return-object p0
.end method

.method public blacklist setWindowingMode(I)Landroid/window/TaskFragmentCreationParams$Builder;
    .registers 2
    .param p1, "windowingMode"    # I

    .line 282
    iput p1, p0, Landroid/window/TaskFragmentCreationParams$Builder;->mWindowingMode:I

    .line 283
    return-object p0
.end method
