.class final Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;
.super Ljava/lang/Object;
.source "WallpaperEffectsGenerationPerUserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CinematicEffectListenerWrapper"
.end annotation


# instance fields
.field private final mListener:Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;

.field private final mTaskId:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListener(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;)Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;->mListener:Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTaskId(Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;->mTaskId:Ljava/lang/String;

    return-object p0
.end method

.method constructor <init>(Ljava/lang/String;Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;)V
    .registers 3
    .param p1, "taskId"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p1, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;->mTaskId:Ljava/lang/String;

    .line 276
    iput-object p2, p0, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationPerUserService$CinematicEffectListenerWrapper;->mListener:Landroid/app/wallpapereffectsgeneration/ICinematicEffectListener;

    .line 277
    return-void
.end method
