.class public final synthetic Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$1:Landroid/app/WallpaperColors;

.field public final synthetic f$2:Lcom/android/server/wallpaper/WallpaperData;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerInternal$ColorsChangedCallbackInternal;Landroid/app/WallpaperColors;Lcom/android/server/wallpaper/WallpaperData;I)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda17;->f$1:Landroid/app/WallpaperColors;

    iput-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda17;->f$2:Lcom/android/server/wallpaper/WallpaperData;

    iput p4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda17;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda17;->f$1:Landroid/app/WallpaperColors;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda17;->f$2:Lcom/android/server/wallpaper/WallpaperData;

    iget p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda17;->f$3:I

    const/4 v2, 0x0

    invoke-static {v2, v0, v1, p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->$r8$lambda$AmUWA-zo1T459jgxbE0_PDcVzx4(Lcom/android/server/wallpaper/WallpaperManagerInternal$ColorsChangedCallbackInternal;Landroid/app/WallpaperColors;Lcom/android/server/wallpaper/WallpaperData;I)V

    return-void
.end method
