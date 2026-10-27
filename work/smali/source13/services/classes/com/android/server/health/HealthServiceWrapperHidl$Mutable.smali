.class Lcom/android/server/health/HealthServiceWrapperHidl$Mutable;
.super Ljava/lang/Object;
.source "HealthServiceWrapperHidl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/health/HealthServiceWrapperHidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Mutable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 148
    .local p0, "this":Lcom/android/server/health/HealthServiceWrapperHidl$Mutable;, "Lcom/android/server/health/HealthServiceWrapperHidl$Mutable<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/health/HealthServiceWrapperHidl$Mutable-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/health/HealthServiceWrapperHidl$Mutable;-><init>()V

    return-void
.end method
