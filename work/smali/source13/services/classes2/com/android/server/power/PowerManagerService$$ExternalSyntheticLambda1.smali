.class public final synthetic Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/PowerManagerService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/PowerManagerService;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/android/server/power/PowerManagerService;->$r8$lambda$q7dp6tNnllSjuO6t2c5KypV49H8(Lcom/android/server/power/PowerManagerService;Z)V

    return-void
.end method
