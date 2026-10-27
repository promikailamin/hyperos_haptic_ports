.class Lcom/android/server/wm/SplashScreenStartingData;
.super Lcom/android/server/wm/StartingData;
.source "SplashScreenStartingData.java"


# instance fields
.field private final mOverrideTheme:I

.field private final mTheme:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;II)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "theme"    # I
    .param p3, "typeParams"    # I

    .line 32
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/StartingData;-><init>(Lcom/android/server/wm/WindowManagerService;I)V

    .line 33
    iput p2, p0, Lcom/android/server/wm/SplashScreenStartingData;->mTheme:I

    .line 35
    iput p2, p0, Lcom/android/server/wm/SplashScreenStartingData;->mOverrideTheme:I

    .line 36
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;III)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "theme"    # I
    .param p3, "typeParams"    # I
    .param p4, "overrideTheme"    # I

    .line 41
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/StartingData;-><init>(Lcom/android/server/wm/WindowManagerService;I)V

    .line 42
    iput p2, p0, Lcom/android/server/wm/SplashScreenStartingData;->mTheme:I

    .line 43
    iput p4, p0, Lcom/android/server/wm/SplashScreenStartingData;->mOverrideTheme:I

    .line 44
    return-void
.end method


# virtual methods
.method createStartingSurface(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/StartingSurfaceController$StartingSurface;
    .registers 5
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 49
    iget-object v0, p0, Lcom/android/server/wm/SplashScreenStartingData;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    iget v1, p0, Lcom/android/server/wm/SplashScreenStartingData;->mTheme:I

    iget v2, p0, Lcom/android/server/wm/SplashScreenStartingData;->mOverrideTheme:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/StartingSurfaceController;->createSplashScreenStartingSurface(Lcom/android/server/wm/ActivityRecord;II)Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    move-result-object v0

    return-object v0
.end method

.method needRevealAnimation()Z
    .registers 2

    .line 55
    const/4 v0, 0x1

    return v0
.end method
