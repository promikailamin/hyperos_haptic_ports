.class public final synthetic Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/util/IntArray;


# direct methods
.method public synthetic constructor <init>(Landroid/util/IntArray;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache$$ExternalSyntheticLambda1;->f$0:Landroid/util/IntArray;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache$$ExternalSyntheticLambda1;->f$0:Landroid/util/IntArray;

    check-cast p1, Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;

    invoke-static {p0, p1}, Lcom/android/server/appop/AppOpHistoryHelper$AppOpHistoryCache;->$r8$lambda$5PR6GZe6YrwKFzHXTDsofYv-K6M(Landroid/util/IntArray;Lcom/android/server/appop/AppOpHistoryHelper$AppOpAccessEvent;)Z

    move-result p0

    return p0
.end method
