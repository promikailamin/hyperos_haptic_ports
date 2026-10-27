.class public final synthetic Lcom/android/server/wm/DisplayPolicy$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/function/TriFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    check-cast p1, Lcom/android/server/wm/DisplayFrames;

    check-cast p2, Lcom/android/server/wm/WindowState;

    check-cast p3, Landroid/graphics/Rect;

    invoke-static {p1, p2, p3}, Lcom/android/server/wm/DisplayPolicy;->$r8$lambda$AIXesvdT_aRdzoKMJGkH12ZMtl8(Lcom/android/server/wm/DisplayFrames;Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
