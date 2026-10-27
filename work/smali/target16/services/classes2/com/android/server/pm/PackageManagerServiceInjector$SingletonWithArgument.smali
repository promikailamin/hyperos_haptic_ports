.class public Lcom/android/server/pm/PackageManagerServiceInjector$SingletonWithArgument;
.super Ljava/lang/Object;
.source "PackageManagerServiceInjector.java"


# instance fields
.field public volatile mInstance:Ljava/lang/Object;

.field public final mProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ProducerWithArgument;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerServiceInjector$ProducerWithArgument;)V
    .registers 3

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector$SingletonWithArgument;->mInstance:Ljava/lang/Object;

    .line 88
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector$SingletonWithArgument;->mProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ProducerWithArgument;

    return-void
.end method


# virtual methods
.method public get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 93
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector$SingletonWithArgument;->mInstance:Ljava/lang/Object;

    if-nez v0, :cond_c

    .line 94
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector$SingletonWithArgument;->mProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ProducerWithArgument;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerServiceInjector$ProducerWithArgument;->produce(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector$SingletonWithArgument;->mInstance:Ljava/lang/Object;

    .line 96
    :cond_c
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector$SingletonWithArgument;->mInstance:Ljava/lang/Object;

    return-object p0
.end method
