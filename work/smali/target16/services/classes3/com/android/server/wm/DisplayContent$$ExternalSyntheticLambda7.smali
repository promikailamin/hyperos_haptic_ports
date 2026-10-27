.class public final synthetic Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/WindowState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/wm/WindowState;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/wm/WindowState;

    invoke-static {p0, p1}, Lcom/android/server/wm/DisplayContent;->$r8$lambda$88asbRtRQRO-4lt2ZTtPxoxHBOw(Lcom/android/server/wm/WindowState;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
