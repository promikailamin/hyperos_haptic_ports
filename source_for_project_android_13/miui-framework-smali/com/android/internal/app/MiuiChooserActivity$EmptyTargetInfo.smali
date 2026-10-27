.class public final Lcom/android/internal/app/MiuiChooserActivity$EmptyTargetInfo;
.super Lcom/android/internal/app/chooser/NotSelectableTargetInfo;
.source "MiuiChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/MiuiChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "EmptyTargetInfo"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 2912
    invoke-direct {p0}, Lcom/android/internal/app/chooser/NotSelectableTargetInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 2915
    const/4 v0, 0x0

    return-object v0
.end method
