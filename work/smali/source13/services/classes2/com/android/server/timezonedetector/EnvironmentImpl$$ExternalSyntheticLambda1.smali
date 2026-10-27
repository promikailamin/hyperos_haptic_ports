.class public final synthetic Lcom/android/server/timezonedetector/EnvironmentImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/timezonedetector/ConfigurationChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/timezonedetector/EnvironmentImpl;

.field public final synthetic f$1:Lcom/android/server/timezonedetector/ConfigurationChangeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timezonedetector/EnvironmentImpl;Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/timezonedetector/EnvironmentImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/timezonedetector/EnvironmentImpl;

    iput-object p2, p0, Lcom/android/server/timezonedetector/EnvironmentImpl$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    return-void
.end method


# virtual methods
.method public final onChange()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/timezonedetector/EnvironmentImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/timezonedetector/EnvironmentImpl;

    iget-object v1, p0, Lcom/android/server/timezonedetector/EnvironmentImpl$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/EnvironmentImpl;->lambda$setConfigurationInternalChangeListener$0$com-android-server-timezonedetector-EnvironmentImpl(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V

    return-void
.end method
