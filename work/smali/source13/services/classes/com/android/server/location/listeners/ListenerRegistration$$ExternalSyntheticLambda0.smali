.class public final synthetic Lcom/android/server/location/listeners/ListenerRegistration$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/listeners/ListenerRegistration;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/listeners/ListenerRegistration$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/listeners/ListenerRegistration;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerRegistration$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/listeners/ListenerRegistration;

    invoke-virtual {v0}, Lcom/android/server/location/listeners/ListenerRegistration;->lambda$executeOperation$0$com-android-server-location-listeners-ListenerRegistration()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
