.class public final Lcom/android/server/inputmethod/RawInputMethodMap;
.super Ljava/lang/Object;
.source "RawInputMethodMap.java"


# static fields
.field public static final EMPTY_MAP:Landroid/util/ArrayMap;


# instance fields
.field public final mMap:Landroid/util/ArrayMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/inputmethod/RawInputMethodMap;->EMPTY_MAP:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>(Landroid/util/ArrayMap;)V
    .registers 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object p1, Lcom/android/server/inputmethod/RawInputMethodMap;->EMPTY_MAP:Landroid/util/ArrayMap;

    goto :goto_12

    :cond_c
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, p1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    move-object p1, v0

    :goto_12
    iput-object p1, p0, Lcom/android/server/inputmethod/RawInputMethodMap;->mMap:Landroid/util/ArrayMap;

    return-void
.end method

.method public static emptyMap()Lcom/android/server/inputmethod/RawInputMethodMap;
    .registers 2

    .line 52
    new-instance v0, Lcom/android/server/inputmethod/RawInputMethodMap;

    sget-object v1, Lcom/android/server/inputmethod/RawInputMethodMap;->EMPTY_MAP:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/RawInputMethodMap;-><init>(Landroid/util/ArrayMap;)V

    return-object v0
.end method

.method public static of(Landroid/util/ArrayMap;)Lcom/android/server/inputmethod/RawInputMethodMap;
    .registers 2

    .line 56
    new-instance v0, Lcom/android/server/inputmethod/RawInputMethodMap;

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/RawInputMethodMap;-><init>(Landroid/util/ArrayMap;)V

    return-object v0
.end method


# virtual methods
.method public toInputMethodMap(Lcom/android/server/inputmethod/AdditionalSubtypeMap;IZ)Lcom/android/server/inputmethod/InputMethodMap;
    .registers 11

    .line 72
    iget-object v0, p0, Lcom/android/server/inputmethod/RawInputMethodMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 73
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_30

    if-eq p2, v3, :cond_2e

    xor-int/2addr p3, v3

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown directBootAwareness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ". Falling back to DirectBootAwareness.AUTO"

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v4, "RawInputMethodMap"

    invoke-static {v4, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    :cond_2e
    move p3, v2

    goto :goto_31

    :cond_30
    xor-int/2addr p3, v3

    :goto_31
    move p2, v2

    :goto_32
    if-ge v2, v0, :cond_74

    .line 88
    iget-object v4, p0, Lcom/android/server/inputmethod/RawInputMethodMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 89
    iget-object v5, p0, Lcom/android/server/inputmethod/RawInputMethodMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz p3, :cond_50

    .line 90
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v6

    iget-boolean v6, v6, Landroid/content/pm/ServiceInfo;->directBootAware:Z

    if-nez v6, :cond_50

    :goto_4e
    move p2, v3

    goto :goto_71

    .line 94
    :cond_50
    invoke-virtual {p1, v4}, Lcom/android/server/inputmethod/AdditionalSubtypeMap;->get(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_6a

    .line 95
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5d

    goto :goto_6a

    .line 99
    :cond_5d
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p2

    new-instance v6, Landroid/view/inputmethod/InputMethodInfo;

    invoke-direct {v6, v5, v4}, Landroid/view/inputmethod/InputMethodInfo;-><init>(Landroid/view/inputmethod/InputMethodInfo;Ljava/util/List;)V

    invoke-virtual {v1, p2, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4e

    .line 96
    :cond_6a
    :goto_6a
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_71
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_74
    if-eqz p2, :cond_77

    goto :goto_79

    .line 103
    :cond_77
    iget-object v1, p0, Lcom/android/server/inputmethod/RawInputMethodMap;->mMap:Landroid/util/ArrayMap;

    :goto_79
    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodMap;->of(Landroid/util/ArrayMap;)Lcom/android/server/inputmethod/InputMethodMap;

    move-result-object p0

    return-object p0
.end method
