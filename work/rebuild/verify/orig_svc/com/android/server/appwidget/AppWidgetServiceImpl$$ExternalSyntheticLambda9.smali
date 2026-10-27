.class public final synthetic Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

.field public final synthetic f$1:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/internal/infra/AndroidFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILcom/android/internal/infra/AndroidFuture;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    iput-object p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda9;->f$1:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iput p3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda9;->f$2:I

    iput-object p4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda9;->f$3:Lcom/android/internal/infra/AndroidFuture;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda9;->f$1:Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    iget v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda9;->f$2:I

    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$$ExternalSyntheticLambda9;->f$3:Lcom/android/internal/infra/AndroidFuture;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->$r8$lambda$ZmcPL-PSr_aOA7ODXzPLvHDWfSk(Lcom/android/server/appwidget/AppWidgetServiceImpl;Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;ILcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method
