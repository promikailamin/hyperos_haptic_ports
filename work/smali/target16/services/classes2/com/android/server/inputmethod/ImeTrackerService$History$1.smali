.class Lcom/android/server/inputmethod/ImeTrackerService$History$1;
.super Ljava/util/LinkedHashMap;
.source "ImeTrackerService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/Long;",
        "Lcom/android/server/inputmethod/ImeTrackerService$History$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/inputmethod/ImeTrackerService$History;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/ImeTrackerService$History;I)V
    .registers 3

    .line 445
    iput-object p1, p0, Lcom/android/server/inputmethod/ImeTrackerService$History$1;->this$0:Lcom/android/server/inputmethod/ImeTrackerService$History;

    invoke-direct {p0, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    return-void
.end method


# virtual methods
.method public removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 2

    .line 449
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p0

    const/16 p1, 0xc8

    if-le p0, p1, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method
