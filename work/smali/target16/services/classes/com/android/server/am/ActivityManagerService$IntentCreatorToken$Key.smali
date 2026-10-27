.class public Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# instance fields
.field public final mAction:Ljava/lang/String;

.field public mClipDataUris:Ljava/util/List;

.field public final mComponent:Landroid/content/ComponentName;

.field public final mCreatorPackage:Ljava/lang/String;

.field public final mCreatorUid:I

.field public final mData:Landroid/net/Uri;

.field public final mFlags:I

.field public final mPackage:Ljava/lang/String;

.field public final mType:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCreatorPackage(Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mCreatorPackage:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCreatorUid(Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mCreatorUid:I

    return p0
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/content/Intent;)V
    .registers 4

    .line 19815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19816
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mCreatorUid:I

    .line 19817
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mCreatorPackage:Ljava/lang/String;

    .line 19818
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mAction:Ljava/lang/String;

    .line 19819
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mData:Landroid/net/Uri;

    .line 19820
    invoke-virtual {p3}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mType:Ljava/lang/String;

    .line 19821
    invoke-virtual {p3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mPackage:Ljava/lang/String;

    .line 19822
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mComponent:Landroid/content/ComponentName;

    .line 19823
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0xc3

    iput p1, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mFlags:I

    .line 19824
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 19826
    invoke-virtual {p1}, Landroid/content/ClipData;->cloneOnlyUriItems()Landroid/content/ClipData;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 19828
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 19829
    invoke-virtual {p1, p2}, Landroid/content/ClipData;->collectUris(Ljava/util/List;)V

    .line 19830
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_49

    .line 19831
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mClipDataUris:Ljava/util/List;

    :cond_49
    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/ActivityManagerService-IA;)V
    .registers 5

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;-><init>(ILjava/lang/String;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_67

    .line 19850
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_67

    .line 19851
    :cond_12
    check-cast p1, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;

    .line 19852
    iget v2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mCreatorUid:I

    iget v3, p1, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mCreatorUid:I

    if-ne v2, v3, :cond_67

    iget v2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mFlags:I

    iget v3, p1, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mFlags:I

    if-ne v2, v3, :cond_67

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mCreatorPackage:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mCreatorPackage:Ljava/lang/String;

    .line 19853
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mAction:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mAction:Ljava/lang/String;

    .line 19854
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mData:Landroid/net/Uri;

    iget-object v3, p1, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mData:Landroid/net/Uri;

    .line 19855
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mType:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mType:Ljava/lang/String;

    .line 19856
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mPackage:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mPackage:Ljava/lang/String;

    .line 19857
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mComponent:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mComponent:Landroid/content/ComponentName;

    .line 19858
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mClipDataUris:Ljava/util/List;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mClipDataUris:Ljava/util/List;

    .line 19859
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_67

    return v0

    :cond_67
    :goto_67
    return v1
.end method

.method public hashCode()I
    .registers 11

    .line 19864
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mCreatorUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mCreatorPackage:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mAction:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mData:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mType:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mPackage:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mComponent:Landroid/content/ComponentName;

    iget v0, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mFlags:I

    .line 19865
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$IntentCreatorToken$Key;->mClipDataUris:Ljava/util/List;

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    .line 19864
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
