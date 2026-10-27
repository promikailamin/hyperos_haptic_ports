.class public final synthetic Lcom/android/server/display/VirtualDisplayAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;
    .registers 3

    invoke-static {p1, p2}, Lcom/android/server/display/VirtualDisplayAdapter;->lambda$new$0(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method
