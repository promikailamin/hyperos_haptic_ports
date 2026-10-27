.class public Lcom/android/server/appop/HistoricalRegistry$1;
.super Landroid/database/ContentObserver;
.source "HistoricalRegistry.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/appop/HistoricalRegistry;

.field public final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/HistoricalRegistry;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .registers 4

    .line 269
    iput-object p1, p0, Lcom/android/server/appop/HistoricalRegistry$1;->this$0:Lcom/android/server/appop/HistoricalRegistry;

    iput-object p3, p0, Lcom/android/server/appop/HistoricalRegistry$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 272
    iget-object p1, p0, Lcom/android/server/appop/HistoricalRegistry$1;->this$0:Lcom/android/server/appop/HistoricalRegistry;

    iget-object p0, p0, Lcom/android/server/appop/HistoricalRegistry$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-static {p1, p0}, Lcom/android/server/appop/HistoricalRegistry;->-$$Nest$msetHistoricalRegistryMode(Lcom/android/server/appop/HistoricalRegistry;Landroid/content/ContentResolver;)V

    return-void
.end method
