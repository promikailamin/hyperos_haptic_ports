.class public final synthetic Lcom/android/server/wm/DesktopModeLaunchParamsModifier$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DesktopModeLaunchParamsModifier$$ExternalSyntheticLambda3;->f$0:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DesktopModeLaunchParamsModifier$$ExternalSyntheticLambda3;->f$0:Ljava/util/concurrent/atomic/AtomicInteger;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {p0, p1}, Lcom/android/server/wm/DesktopModeLaunchParamsModifier;->$r8$lambda$7v9pymhjS6A1twgo6q8kaLEhb9I(Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
