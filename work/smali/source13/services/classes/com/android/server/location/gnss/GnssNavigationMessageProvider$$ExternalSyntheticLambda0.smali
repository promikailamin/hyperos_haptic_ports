.class public final synthetic Lcom/android/server/location/gnss/GnssNavigationMessageProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;


# instance fields
.field public final synthetic f$0:Landroid/location/GnssNavigationMessage;


# direct methods
.method public synthetic constructor <init>(Landroid/location/GnssNavigationMessage;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider$$ExternalSyntheticLambda0;->f$0:Landroid/location/GnssNavigationMessage;

    return-void
.end method


# virtual methods
.method public final operate(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNavigationMessageProvider$$ExternalSyntheticLambda0;->f$0:Landroid/location/GnssNavigationMessage;

    check-cast p1, Landroid/location/IGnssNavigationMessageListener;

    invoke-static {v0, p1}, Lcom/android/server/location/gnss/GnssNavigationMessageProvider;->lambda$onReportNavigationMessage$0(Landroid/location/GnssNavigationMessage;Landroid/location/IGnssNavigationMessageListener;)V

    return-void
.end method
