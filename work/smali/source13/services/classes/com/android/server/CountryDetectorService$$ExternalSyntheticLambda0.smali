.class public final synthetic Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/CountryDetectorService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/CountryDetectorService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/CountryDetectorService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/CountryDetectorService;

    invoke-virtual {v0}, Lcom/android/server/CountryDetectorService;->lambda$systemRunning$0$com-android-server-CountryDetectorService()V

    return-void
.end method
