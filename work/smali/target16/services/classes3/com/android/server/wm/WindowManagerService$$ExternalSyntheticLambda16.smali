.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    check-cast p1, Lcom/android/server/wm/Task;

    invoke-static {p1}, Lcom/android/server/wm/WindowManagerService;->$r8$lambda$md7-goBwuBB9WuHB_wpgTJbVy0s(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method
