.class public Landroid/os/WorkSource;
.super Ljava/lang/Object;
.source "WorkSource.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/WorkSource$WorkChain;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/WorkSource;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o DEBUG:Z = false

.field static final greylist-max-o TAG:Ljava/lang/String; = "WorkSource"

.field static greylist-max-p sGoneWork:Landroid/os/WorkSource;

.field static greylist-max-p sNewbWork:Landroid/os/WorkSource;

.field static final greylist-max-p sTmpWorkSource:Landroid/os/WorkSource;


# instance fields
.field private greylist-max-o mChains:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/WorkSource$WorkChain;",
            ">;"
        }
    .end annotation
.end field

.field greylist mNames:[Ljava/lang/String;

.field greylist mNum:I

.field greylist mUids:[I

.field private blacklist name0:Ljava/lang/String;

.field private blacklist pid0:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 68
    new-instance v0, Landroid/os/WorkSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/WorkSource;-><init>(I)V

    sput-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    .line 1280
    new-instance v0, Landroid/os/WorkSource$1;

    invoke-direct {v0}, Landroid/os/WorkSource$1;-><init>()V

    sput-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->name0:Ljava/lang/String;

    .line 39
    const/4 v1, -0x1

    iput v1, p0, Landroid/os/WorkSource;->pid0:I

    .line 84
    const/4 v1, 0x0

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 85
    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 86
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .registers 6
    .param p1, "uid"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->name0:Ljava/lang/String;

    .line 39
    const/4 v1, -0x1

    iput v1, p0, Landroid/os/WorkSource;->pid0:I

    .line 130
    const/4 v1, 0x1

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 131
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    aput v3, v2, v1

    iput-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    .line 132
    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 133
    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 134
    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->name0:Ljava/lang/String;

    .line 39
    const/4 v1, -0x1

    iput v1, p0, Landroid/os/WorkSource;->pid0:I

    .line 144
    const-string/jumbo v1, "packageName can\'t be null"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const/4 v1, 0x1

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 146
    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    aput v4, v3, v1

    iput-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    .line 147
    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v4

    aput-object v0, v2, v1

    iput-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 148
    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 149
    return-void
.end method

.method constructor greylist <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->name0:Ljava/lang/String;

    .line 39
    const/4 v1, -0x1

    iput v1, p0, Landroid/os/WorkSource;->pid0:I

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/os/WorkSource;->name0:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/WorkSource;->pid0:I

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 161
    .local v1, "numChains":I
    if-ltz v1, :cond_40

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 163
    const-class v2, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-class v3, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    goto :goto_42

    .line 165
    :cond_40
    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 167
    :goto_42
    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/WorkSource;)V
    .registers 6
    .param p1, "orig"    # Landroid/os/WorkSource;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->name0:Ljava/lang/String;

    .line 39
    const/4 v1, -0x1

    iput v1, p0, Landroid/os/WorkSource;->pid0:I

    .line 93
    if-nez p1, :cond_11

    .line 94
    const/4 v1, 0x0

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 95
    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 96
    return-void

    .line 99
    :cond_11
    iget-object v1, p1, Landroid/os/WorkSource;->name0:Ljava/lang/String;

    iput-object v1, p0, Landroid/os/WorkSource;->name0:Ljava/lang/String;

    .line 100
    iget v1, p1, Landroid/os/WorkSource;->pid0:I

    iput v1, p0, Landroid/os/WorkSource;->pid0:I

    .line 102
    iget v1, p1, Landroid/os/WorkSource;->mNum:I

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 103
    iget-object v1, p1, Landroid/os/WorkSource;->mUids:[I

    if-eqz v1, :cond_38

    .line 104
    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 105
    iget-object v1, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v1, :cond_34

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_35

    :cond_34
    move-object v1, v0

    :goto_35
    iput-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    goto :goto_3c

    .line 107
    :cond_38
    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 108
    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 111
    :goto_3c
    iget-object v1, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v1, :cond_6b

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 114
    iget-object v0, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_53
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource$WorkChain;

    .line 115
    .local v1, "chain":Landroid/os/WorkSource$WorkChain;
    iget-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    new-instance v3, Landroid/os/WorkSource$WorkChain;

    invoke-direct {v3, v1}, Landroid/os/WorkSource$WorkChain;-><init>(Landroid/os/WorkSource$WorkChain;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .end local v1    # "chain":Landroid/os/WorkSource$WorkChain;
    goto :goto_53

    :cond_6a
    goto :goto_6d

    .line 118
    :cond_6b
    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 120
    :goto_6d
    return-void
.end method

.method private static greylist-max-o addWork(Landroid/os/WorkSource;I)Landroid/os/WorkSource;
    .registers 3
    .param p0, "cur"    # Landroid/os/WorkSource;
    .param p1, "newUid"    # I

    .line 736
    if-nez p0, :cond_8

    .line 737
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(I)V

    return-object v0

    .line 739
    :cond_8
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    invoke-direct {p0, v0, p1}, Landroid/os/WorkSource;->insert(II)V

    .line 740
    return-object p0
.end method

.method private static greylist-max-o addWork(Landroid/os/WorkSource;ILjava/lang/String;)Landroid/os/WorkSource;
    .registers 4
    .param p0, "cur"    # Landroid/os/WorkSource;
    .param p1, "newUid"    # I
    .param p2, "newName"    # Ljava/lang/String;

    .line 828
    if-nez p0, :cond_8

    .line 829
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1, p2}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 831
    :cond_8
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    invoke-direct {p0, v0, p1, p2}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    .line 832
    return-object p0
.end method

.method private greylist-max-o clearNames()V
    .registers 7

    .line 252
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_25

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 255
    const/4 v0, 0x1

    .line 256
    .local v0, "destIndex":I
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 257
    .local v1, "newNum":I
    const/4 v2, 0x1

    .local v2, "sourceIndex":I
    :goto_b
    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v2, v3, :cond_23

    .line 258
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    aget v4, v3, v2

    add-int/lit8 v5, v2, -0x1

    aget v5, v3, v5

    if-ne v4, v5, :cond_1c

    .line 259
    add-int/lit8 v1, v1, -0x1

    goto :goto_20

    .line 261
    :cond_1c
    aput v4, v3, v0

    .line 262
    add-int/lit8 v0, v0, 0x1

    .line 257
    :goto_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 265
    .end local v2    # "sourceIndex":I
    :cond_23
    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 267
    .end local v0    # "destIndex":I
    .end local v1    # "newNum":I
    :cond_25
    return-void
.end method

.method private greylist-max-o compare(Landroid/os/WorkSource;II)I
    .registers 7
    .param p1, "other"    # Landroid/os/WorkSource;
    .param p2, "i1"    # I
    .param p3, "i2"    # I

    .line 820
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aget v0, v0, p2

    iget-object v1, p1, Landroid/os/WorkSource;->mUids:[I

    aget v1, v1, p3

    sub-int/2addr v0, v1

    .line 821
    .local v0, "diff":I
    if-eqz v0, :cond_c

    .line 822
    return v0

    .line 824
    :cond_c
    iget-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v1, v1, p2

    iget-object v2, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static greylist-max-o diffChains(Landroid/os/WorkSource;Landroid/os/WorkSource;)[Ljava/util/ArrayList;
    .registers 8
    .param p0, "oldWs"    # Landroid/os/WorkSource;
    .param p1, "newWs"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/WorkSource;",
            "Landroid/os/WorkSource;",
            ")[",
            "Ljava/util/ArrayList<",
            "Landroid/os/WorkSource$WorkChain;",
            ">;"
        }
    .end annotation

    .line 1158
    const/4 v0, 0x0

    .line 1159
    .local v0, "newChains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/WorkSource$WorkChain;>;"
    const/4 v1, 0x0

    .line 1165
    .local v1, "goneChains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/WorkSource$WorkChain;>;"
    iget-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v2, :cond_35

    .line 1166
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    iget-object v3, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_35

    .line 1167
    iget-object v3, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource$WorkChain;

    .line 1168
    .local v3, "wc":Landroid/os/WorkSource$WorkChain;
    iget-object v4, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v4, :cond_21

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 1169
    :cond_21
    if-nez v1, :cond_2f

    .line 1170
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v4

    .line 1172
    :cond_2f
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1166
    .end local v3    # "wc":Landroid/os/WorkSource$WorkChain;
    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1177
    .end local v2    # "i":I
    :cond_35
    iget-object v2, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v2, :cond_68

    .line 1178
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3a
    iget-object v3, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_68

    .line 1179
    iget-object v3, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/WorkSource$WorkChain;

    .line 1180
    .restart local v3    # "wc":Landroid/os/WorkSource$WorkChain;
    iget-object v4, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v4, :cond_54

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_65

    .line 1181
    :cond_54
    if-nez v0, :cond_62

    .line 1182
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v4

    .line 1184
    :cond_62
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1178
    .end local v3    # "wc":Landroid/os/WorkSource$WorkChain;
    :cond_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 1189
    .end local v2    # "i":I
    :cond_68
    if-nez v0, :cond_6f

    if-eqz v1, :cond_6d

    goto :goto_6f

    .line 1193
    :cond_6d
    const/4 v2, 0x0

    return-object v2

    .line 1190
    :cond_6f
    :goto_6f
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/util/ArrayList;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    return-object v2
.end method

.method private greylist-max-o insert(II)V
    .registers 8
    .param p1, "index"    # I
    .param p2, "uid"    # I

    .line 899
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    .line 900
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 901
    aput p2, v0, v1

    .line 902
    iput v2, p0, Landroid/os/WorkSource;->mNum:I

    goto :goto_47

    .line 903
    :cond_10
    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    array-length v4, v0

    if-lt v3, v4, :cond_36

    .line 904
    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [I

    .line 905
    .local v3, "newuids":[I
    if-lez p1, :cond_20

    .line 906
    invoke-static {v0, v1, v3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 908
    :cond_20
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    if-ge p1, v0, :cond_2c

    .line 909
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 911
    :cond_2c
    iput-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    .line 912
    aput p2, v3, p1

    .line 913
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 914
    .end local v3    # "newuids":[I
    goto :goto_47

    .line 915
    :cond_36
    if-ge p1, v3, :cond_3e

    .line 916
    add-int/lit8 v1, p1, 0x1

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 918
    :cond_3e
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v0, p1

    .line 919
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 921
    :goto_47
    return-void
.end method

.method private greylist-max-o insert(IILjava/lang/String;)V
    .registers 10
    .param p1, "index"    # I
    .param p2, "uid"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 924
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_16

    .line 925
    const/4 v0, 0x4

    new-array v3, v0, [I

    iput-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    .line 926
    aput p2, v3, v1

    .line 927
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 928
    aput-object p3, v0, v1

    .line 929
    iput v2, p0, Landroid/os/WorkSource;->mNum:I

    goto :goto_74

    .line 930
    :cond_16
    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    array-length v4, v0

    if-lt v3, v4, :cond_55

    .line 931
    mul-int/lit8 v4, v3, 0x3

    div-int/lit8 v4, v4, 0x2

    new-array v4, v4, [I

    .line 932
    .local v4, "newuids":[I
    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 933
    .local v3, "newnames":[Ljava/lang/String;
    if-lez p1, :cond_31

    .line 934
    invoke-static {v0, v1, v4, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 935
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    invoke-static {v0, v1, v3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 937
    :cond_31
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    if-ge p1, v0, :cond_47

    .line 938
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    add-int/lit8 v5, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 939
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    iget v5, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v5, p1

    invoke-static {v0, p1, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 941
    :cond_47
    iput-object v4, p0, Landroid/os/WorkSource;->mUids:[I

    .line 942
    iput-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 943
    aput p2, v4, p1

    .line 944
    aput-object p3, v3, p1

    .line 945
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 946
    .end local v3    # "newnames":[Ljava/lang/String;
    .end local v4    # "newuids":[I
    goto :goto_74

    .line 947
    :cond_55
    if-ge p1, v3, :cond_67

    .line 948
    add-int/lit8 v1, p1, 0x1

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 949
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 951
    :cond_67
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v0, p1

    .line 952
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aput-object p3, v0, p1

    .line 953
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 955
    :goto_74
    return-void
.end method

.method public static greylist-max-o isChainedBatteryAttributionEnabled(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "chained_battery_attribution_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    move v2, v1

    :cond_f
    return v2
.end method

.method private greylist-max-o removeUids(Landroid/os/WorkSource;)Z
    .registers 11
    .param p1, "other"    # Landroid/os/WorkSource;

    .line 649
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 650
    .local v0, "N1":I
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 651
    .local v1, "uids1":[I
    iget v2, p1, Landroid/os/WorkSource;->mNum:I

    .line 652
    .local v2, "N2":I
    iget-object v3, p1, Landroid/os/WorkSource;->mUids:[I

    .line 653
    .local v3, "uids2":[I
    const/4 v4, 0x0

    .line 654
    .local v4, "changed":Z
    const/4 v5, 0x0

    .local v5, "i1":I
    const/4 v6, 0x0

    .line 656
    .local v6, "i2":I
    :goto_b
    if-ge v5, v0, :cond_30

    if-ge v6, v2, :cond_30

    .line 659
    aget v7, v3, v6

    aget v8, v1, v5

    if-ne v7, v8, :cond_24

    .line 662
    add-int/lit8 v0, v0, -0x1

    .line 663
    const/4 v4, 0x1

    .line 664
    if-ge v5, v0, :cond_21

    add-int/lit8 v7, v5, 0x1

    sub-int v8, v0, v5

    invoke-static {v1, v7, v1, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 665
    :cond_21
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 666
    :cond_24
    aget v7, v3, v6

    aget v8, v1, v5

    if-le v7, v8, :cond_2d

    .line 668
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 671
    :cond_2d
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 675
    :cond_30
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 677
    return v4
.end method

.method private greylist-max-o removeUidsAndNames(Landroid/os/WorkSource;)Z
    .registers 13
    .param p1, "other"    # Landroid/os/WorkSource;

    .line 681
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 682
    .local v0, "N1":I
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 683
    .local v1, "uids1":[I
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 684
    .local v2, "names1":[Ljava/lang/String;
    iget v3, p1, Landroid/os/WorkSource;->mNum:I

    .line 685
    .local v3, "N2":I
    iget-object v4, p1, Landroid/os/WorkSource;->mUids:[I

    .line 686
    .local v4, "uids2":[I
    iget-object v5, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 687
    .local v5, "names2":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 688
    .local v6, "changed":Z
    const/4 v7, 0x0

    .local v7, "i1":I
    const/4 v8, 0x0

    .line 690
    .local v8, "i2":I
    :goto_f
    if-ge v7, v0, :cond_56

    if-ge v8, v3, :cond_56

    .line 693
    aget v9, v4, v8

    aget v10, v1, v7

    if-ne v9, v10, :cond_39

    aget-object v9, v5, v8

    aget-object v10, v2, v7

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_39

    .line 696
    add-int/lit8 v0, v0, -0x1

    .line 697
    const/4 v6, 0x1

    .line 698
    if-ge v7, v0, :cond_36

    .line 699
    add-int/lit8 v9, v7, 0x1

    sub-int v10, v0, v7

    invoke-static {v1, v9, v1, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 700
    add-int/lit8 v9, v7, 0x1

    sub-int v10, v0, v7

    invoke-static {v2, v9, v2, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 702
    :cond_36
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    .line 703
    :cond_39
    aget v9, v4, v8

    aget v10, v1, v7

    if-gt v9, v10, :cond_53

    aget v9, v4, v8

    aget v10, v1, v7

    if-ne v9, v10, :cond_50

    aget-object v9, v5, v8

    aget-object v10, v2, v7

    .line 704
    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_50

    goto :goto_53

    .line 709
    :cond_50
    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    .line 706
    :cond_53
    :goto_53
    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    .line 713
    :cond_56
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 715
    return v6
.end method

.method private greylist-max-p updateLocked(Landroid/os/WorkSource;ZZ)Z
    .registers 8
    .param p1, "other"    # Landroid/os/WorkSource;
    .param p2, "set"    # Z
    .param p3, "returnNewbs"    # Z

    .line 720
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_d

    iget-object v1, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v1, :cond_d

    .line 721
    invoke-direct {p0, p1, p2, p3}, Landroid/os/WorkSource;->updateUidsLocked(Landroid/os/WorkSource;ZZ)Z

    move-result v0

    return v0

    .line 723
    :cond_d
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    const-string v2, " does not"

    if-lez v1, :cond_3d

    if-eqz v0, :cond_16

    goto :goto_3d

    .line 724
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Other "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " has names, but target "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 727
    :cond_3d
    :goto_3d
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    if-lez v0, :cond_6d

    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_46

    goto :goto_6d

    .line 728
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Target "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " has names, but other "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 731
    :cond_6d
    :goto_6d
    invoke-direct {p0, p1, p2, p3}, Landroid/os/WorkSource;->updateUidsAndNamesLocked(Landroid/os/WorkSource;ZZ)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o updateUidsAndNamesLocked(Landroid/os/WorkSource;ZZ)Z
    .registers 15
    .param p1, "other"    # Landroid/os/WorkSource;
    .param p2, "set"    # Z
    .param p3, "returnNewbs"    # Z

    .line 836
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    .line 837
    .local v0, "N2":I
    iget-object v1, p1, Landroid/os/WorkSource;->mUids:[I

    .line 838
    .local v1, "uids2":[I
    iget-object v2, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 839
    .local v2, "names2":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 840
    .local v3, "changed":Z
    const/4 v4, 0x0

    .local v4, "i1":I
    const/4 v5, 0x0

    .line 843
    .local v5, "i2":I
    :goto_9
    iget v6, p0, Landroid/os/WorkSource;->mNum:I

    if-lt v4, v6, :cond_11

    if-ge v5, v0, :cond_10

    goto :goto_11

    .line 894
    :cond_10
    return v3

    .line 846
    :cond_11
    :goto_11
    const/4 v7, -0x1

    .line 847
    .local v7, "diff":I
    if-ge v4, v6, :cond_72

    if-ge v5, v0, :cond_1e

    invoke-direct {p0, p1, v4, v5}, Landroid/os/WorkSource;->compare(Landroid/os/WorkSource;II)I

    move-result v6

    move v7, v6

    if-lez v6, :cond_1e

    goto :goto_72

    .line 859
    :cond_1e
    if-nez p2, :cond_29

    .line 861
    if-ge v5, v0, :cond_26

    if-nez v7, :cond_26

    .line 862
    add-int/lit8 v5, v5, 0x1

    .line 864
    :cond_26
    add-int/lit8 v4, v4, 0x1

    goto :goto_8c

    .line 867
    :cond_29
    move v6, v4

    .line 868
    .local v6, "start":I
    :goto_2a
    if-gez v7, :cond_4d

    .line 871
    sget-object v8, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    iget-object v9, p0, Landroid/os/WorkSource;->mUids:[I

    aget v9, v9, v4

    iget-object v10, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v10, v10, v4

    invoke-static {v8, v9, v10}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v8

    sput-object v8, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    .line 872
    add-int/lit8 v4, v4, 0x1

    .line 873
    iget v8, p0, Landroid/os/WorkSource;->mNum:I

    if-lt v4, v8, :cond_43

    .line 874
    goto :goto_4d

    .line 876
    :cond_43
    if-ge v5, v0, :cond_4a

    invoke-direct {p0, p1, v4, v5}, Landroid/os/WorkSource;->compare(Landroid/os/WorkSource;II)I

    move-result v8

    goto :goto_4b

    :cond_4a
    const/4 v8, -0x1

    :goto_4b
    move v7, v8

    goto :goto_2a

    .line 878
    :cond_4d
    :goto_4d
    if-ge v6, v4, :cond_67

    .line 879
    iget-object v8, p0, Landroid/os/WorkSource;->mUids:[I

    iget v9, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v9, v4

    invoke-static {v8, v4, v8, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 880
    iget-object v8, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget v9, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v9, v4

    invoke-static {v8, v4, v8, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 881
    iget v8, p0, Landroid/os/WorkSource;->mNum:I

    sub-int v9, v4, v6

    sub-int/2addr v8, v9

    iput v8, p0, Landroid/os/WorkSource;->mNum:I

    .line 882
    move v4, v6

    .line 885
    :cond_67
    iget v8, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v4, v8, :cond_8c

    if-nez v7, :cond_8c

    .line 887
    add-int/lit8 v4, v4, 0x1

    .line 888
    add-int/lit8 v5, v5, 0x1

    goto :goto_8c

    .line 849
    .end local v6    # "start":I
    :cond_72
    :goto_72
    const/4 v3, 0x1

    .line 852
    aget v6, v1, v5

    aget-object v8, v2, v5

    invoke-direct {p0, v4, v6, v8}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    .line 853
    if-eqz p3, :cond_88

    .line 854
    sget-object v6, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    aget v8, v1, v5

    aget-object v9, v2, v5

    invoke-static {v6, v8, v9}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v6

    sput-object v6, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 856
    :cond_88
    add-int/lit8 v4, v4, 0x1

    .line 857
    add-int/lit8 v5, v5, 0x1

    .line 892
    .end local v7    # "diff":I
    :cond_8c
    :goto_8c
    goto/16 :goto_9
.end method

.method private greylist-max-o updateUidsLocked(Landroid/os/WorkSource;ZZ)Z
    .registers 14
    .param p1, "other"    # Landroid/os/WorkSource;
    .param p2, "set"    # Z
    .param p3, "returnNewbs"    # Z

    .line 744
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 745
    .local v0, "N1":I
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 746
    .local v1, "uids1":[I
    iget v2, p1, Landroid/os/WorkSource;->mNum:I

    .line 747
    .local v2, "N2":I
    iget-object v3, p1, Landroid/os/WorkSource;->mUids:[I

    .line 748
    .local v3, "uids2":[I
    const/4 v4, 0x0

    .line 749
    .local v4, "changed":Z
    const/4 v5, 0x0

    .local v5, "i1":I
    const/4 v6, 0x0

    .line 752
    .local v6, "i2":I
    :goto_b
    if-lt v5, v0, :cond_15

    if-ge v6, v2, :cond_10

    goto :goto_15

    .line 810
    :cond_10
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 811
    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 813
    return v4

    .line 755
    :cond_15
    :goto_15
    if-ge v5, v0, :cond_61

    if-ge v6, v2, :cond_20

    aget v7, v3, v6

    aget v8, v1, v5

    if-ge v7, v8, :cond_20

    goto :goto_61

    .line 780
    :cond_20
    if-nez p2, :cond_2f

    .line 783
    if-ge v6, v2, :cond_2c

    aget v7, v3, v6

    aget v8, v1, v5

    if-ne v7, v8, :cond_2c

    .line 784
    add-int/lit8 v6, v6, 0x1

    .line 786
    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    .line 789
    :cond_2f
    move v7, v5

    .line 790
    .local v7, "start":I
    :goto_30
    if-ge v5, v0, :cond_47

    if-ge v6, v2, :cond_3a

    aget v8, v3, v6

    aget v9, v1, v5

    if-le v8, v9, :cond_47

    .line 792
    :cond_3a
    sget-object v8, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    aget v9, v1, v5

    invoke-static {v8, v9}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;I)Landroid/os/WorkSource;

    move-result-object v8

    sput-object v8, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    .line 793
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 795
    :cond_47
    if-ge v7, v5, :cond_52

    .line 796
    sub-int v8, v0, v5

    invoke-static {v1, v5, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 797
    sub-int v8, v5, v7

    sub-int/2addr v0, v8

    .line 798
    move v5, v7

    .line 801
    :cond_52
    if-ge v5, v0, :cond_60

    if-ge v6, v2, :cond_60

    aget v8, v3, v6

    aget v9, v1, v5

    if-ne v8, v9, :cond_60

    .line 803
    add-int/lit8 v5, v5, 0x1

    .line 804
    add-int/lit8 v6, v6, 0x1

    .line 806
    .end local v7    # "start":I
    :cond_60
    goto :goto_b

    .line 759
    :cond_61
    :goto_61
    const/4 v4, 0x1

    .line 760
    const/4 v7, 0x0

    if-nez v1, :cond_6d

    .line 761
    const/4 v8, 0x4

    new-array v1, v8, [I

    .line 762
    aget v8, v3, v6

    aput v8, v1, v7

    goto :goto_98

    .line 763
    :cond_6d
    array-length v8, v1

    if-lt v0, v8, :cond_8b

    .line 764
    array-length v8, v1

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x2

    new-array v8, v8, [I

    .line 765
    .local v8, "newuids":[I
    if-lez v5, :cond_7c

    invoke-static {v1, v7, v8, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 766
    :cond_7c
    if-ge v5, v0, :cond_85

    add-int/lit8 v7, v5, 0x1

    sub-int v9, v0, v5

    invoke-static {v1, v5, v8, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 767
    :cond_85
    move-object v1, v8

    .line 768
    aget v7, v3, v6

    aput v7, v1, v5

    .line 769
    .end local v8    # "newuids":[I
    goto :goto_98

    .line 770
    :cond_8b
    if-ge v5, v0, :cond_94

    add-int/lit8 v7, v5, 0x1

    sub-int v8, v0, v5

    invoke-static {v1, v5, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 771
    :cond_94
    aget v7, v3, v6

    aput v7, v1, v5

    .line 773
    :goto_98
    if-eqz p3, :cond_a4

    .line 774
    sget-object v7, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    aget v8, v3, v6

    invoke-static {v7, v8}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;I)Landroid/os/WorkSource;

    move-result-object v7

    sput-object v7, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 776
    :cond_a4
    add-int/lit8 v0, v0, 0x1

    .line 777
    add-int/lit8 v5, v5, 0x1

    .line 778
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_b
.end method


# virtual methods
.method public greylist add(I)Z
    .registers 6
    .param p1, "uid"    # I

    .line 512
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_d

    .line 513
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 514
    invoke-direct {p0, v2, p1}, Landroid/os/WorkSource;->insert(II)V

    .line 515
    return v1

    .line 517
    :cond_d
    iget-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v3, :cond_20

    .line 520
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    invoke-static {v3, v2, v0, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    .line 522
    .local v0, "i":I
    if-ltz v0, :cond_1a

    .line 523
    return v2

    .line 525
    :cond_1a
    neg-int v2, v0

    sub-int/2addr v2, v1

    invoke-direct {p0, v2, p1}, Landroid/os/WorkSource;->insert(II)V

    .line 526
    return v1

    .line 518
    .end local v0    # "i":I
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding without name to named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist add(ILjava/lang/String;)Z
    .registers 7
    .param p1, "uid"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 533
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_a

    .line 534
    invoke-direct {p0, v1, p1, p2}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    .line 535
    return v2

    .line 537
    :cond_a
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_31

    .line 541
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v0, v3, :cond_2d

    .line 542
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    aget v3, v3, v0

    if-le v3, p1, :cond_1a

    .line 543
    goto :goto_2d

    .line 545
    :cond_1a
    if-ne v3, p1, :cond_2a

    .line 546
    iget-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    .line 547
    .local v3, "diff":I
    if-lez v3, :cond_27

    .line 548
    goto :goto_2d

    .line 550
    :cond_27
    if-nez v3, :cond_2a

    .line 551
    return v1

    .line 541
    .end local v3    # "diff":I
    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 555
    :cond_2d
    :goto_2d
    invoke-direct {p0, v0, p1, p2}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    .line 556
    return v2

    .line 538
    .end local v0    # "i":I
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding name to unnamed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist add(Landroid/os/WorkSource;)Z
    .registers 10
    .param p1, "other"    # Landroid/os/WorkSource;

    .line 454
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v0

    .line 455
    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, p1, v1, v1}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    move-result v2

    .line 457
    .local v2, "uidAdded":Z
    const/4 v3, 0x0

    .line 458
    .local v3, "chainAdded":Z
    iget-object v4, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v4, :cond_44

    .line 461
    iget-object v4, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-nez v4, :cond_1e

    .line 462
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 465
    :cond_1e
    iget-object v4, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/WorkSource$WorkChain;

    .line 466
    .local v5, "wc":Landroid/os/WorkSource$WorkChain;
    iget-object v6, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_43

    .line 467
    iget-object v6, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    new-instance v7, Landroid/os/WorkSource$WorkChain;

    invoke-direct {v7, v5}, Landroid/os/WorkSource$WorkChain;-><init>(Landroid/os/WorkSource$WorkChain;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    const/4 v3, 0x1

    .line 470
    .end local v5    # "wc":Landroid/os/WorkSource$WorkChain;
    :cond_43
    goto :goto_24

    .line 473
    :cond_44
    if-nez v2, :cond_48

    if-eqz v3, :cond_49

    :cond_48
    const/4 v1, 0x1

    :cond_49
    monitor-exit v0

    return v1

    .line 474
    .end local v2    # "uidAdded":Z
    .end local v3    # "chainAdded":Z
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4 .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method public blacklist addReturningNewbs(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .registers 5
    .param p1, "other"    # Landroid/os/WorkSource;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 501
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v0

    .line 502
    const/4 v1, 0x0

    :try_start_4
    sput-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 503
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    .line 504
    sget-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    monitor-exit v0

    return-object v1

    .line 505
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public whitelist clear()V
    .registers 2

    .line 273
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 274
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    .line 275
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 277
    :cond_a
    return-void
.end method

.method public whitelist createWorkChain()Landroid/os/WorkSource$WorkChain;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 594
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 595
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 598
    :cond_c
    new-instance v0, Landroid/os/WorkSource$WorkChain;

    invoke-direct {v0}, Landroid/os/WorkSource$WorkChain;-><init>()V

    .line 599
    .local v0, "wc":Landroid/os/WorkSource$WorkChain;
    iget-object v1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1198
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist diff(Landroid/os/WorkSource;)Z
    .registers 11
    .param p1, "other"    # Landroid/os/WorkSource;

    .line 325
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 326
    .local v0, "N":I
    iget v1, p1, Landroid/os/WorkSource;->mNum:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_8

    .line 327
    return v2

    .line 329
    :cond_8
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 330
    .local v1, "uids1":[I
    iget-object v3, p1, Landroid/os/WorkSource;->mUids:[I

    .line 331
    .local v3, "uids2":[I
    iget-object v4, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 332
    .local v4, "names1":[Ljava/lang/String;
    iget-object v5, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 333
    .local v5, "names2":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_11
    if-ge v6, v0, :cond_2c

    .line 334
    aget v7, v1, v6

    aget v8, v3, v6

    if-eq v7, v8, :cond_1a

    .line 335
    return v2

    .line 337
    :cond_1a
    if-eqz v4, :cond_29

    if-eqz v5, :cond_29

    aget-object v7, v4, v6

    aget-object v8, v5, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_29

    .line 338
    return v2

    .line 333
    :cond_29
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 341
    .end local v6    # "i":I
    :cond_2c
    const/4 v2, 0x0

    return v2
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 21
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1249
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 1250
    .local v2, "workSourceToken":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_9
    iget v5, v0, Landroid/os/WorkSource;->mNum:I

    const-wide v6, 0x10900000002L

    const-wide v8, 0x10500000001L

    const-wide v10, 0x20b00000001L

    if-ge v4, v5, :cond_36

    .line 1251
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 1252
    .local v10, "contentProto":J
    iget-object v5, v0, Landroid/os/WorkSource;->mUids:[I

    aget v5, v5, v4

    invoke-virtual {v1, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1253
    iget-object v5, v0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v5, :cond_30

    .line 1254
    aget-object v5, v5, v4

    invoke-virtual {v1, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1256
    :cond_30
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1250
    .end local v10    # "contentProto":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1259
    .end local v4    # "i":I
    :cond_36
    iget-object v4, v0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v4, :cond_a1

    .line 1260
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3b
    iget-object v5, v0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_a1

    .line 1261
    iget-object v5, v0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/WorkSource$WorkChain;

    .line 1262
    .local v5, "wc":Landroid/os/WorkSource$WorkChain;
    const-wide v12, 0x20b00000002L

    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 1264
    .local v12, "workChain":J
    invoke-virtual {v5}, Landroid/os/WorkSource$WorkChain;->getTags()[Ljava/lang/String;

    move-result-object v14

    .line 1265
    .local v14, "tags":[Ljava/lang/String;
    invoke-virtual {v5}, Landroid/os/WorkSource$WorkChain;->getUids()[I

    move-result-object v15

    .line 1266
    .local v15, "uids":[I
    const/16 v16, 0x0

    move/from16 v6, v16

    .local v6, "j":I
    :goto_60
    array-length v7, v14

    if-ge v6, v7, :cond_8b

    .line 1267
    invoke-virtual {v1, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    .line 1268
    .local v8, "contentProto":J
    aget v7, v15, v6

    const-wide v10, 0x10500000001L

    invoke-virtual {v1, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1269
    aget-object v7, v14, v6

    const-wide v10, 0x10900000002L

    invoke-virtual {v1, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1270
    invoke-virtual {v1, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1266
    .end local v8    # "contentProto":J
    add-int/lit8 v6, v6, 0x1

    const-wide v8, 0x10500000001L

    const-wide v10, 0x20b00000001L

    goto :goto_60

    :cond_8b
    const-wide v10, 0x10900000002L

    .line 1273
    .end local v6    # "j":I
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1260
    .end local v5    # "wc":Landroid/os/WorkSource$WorkChain;
    .end local v12    # "workChain":J
    .end local v14    # "tags":[Ljava/lang/String;
    .end local v15    # "uids":[I
    add-int/lit8 v4, v4, 0x1

    move-wide v6, v10

    const-wide v8, 0x10500000001L

    const-wide v10, 0x20b00000001L

    goto :goto_3b

    .line 1277
    .end local v4    # "i":I
    :cond_a1
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1278
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 281
    instance-of v0, p1, Landroid/os/WorkSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    .line 282
    move-object v0, p1

    check-cast v0, Landroid/os/WorkSource;

    .line 284
    .local v0, "other":Landroid/os/WorkSource;
    invoke-virtual {p0, v0}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 285
    return v1

    .line 288
    :cond_f
    iget-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22

    .line 289
    iget-object v1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 291
    :cond_22
    iget-object v2, v0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2d

    :cond_2c
    const/4 v1, 0x1

    :cond_2d
    return v1

    .line 295
    .end local v0    # "other":Landroid/os/WorkSource;
    :cond_2e
    return v1
.end method

.method public greylist get(I)I
    .registers 3
    .param p1, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 196
    invoke-virtual {p0, p1}, Landroid/os/WorkSource;->getUid(I)I

    move-result v0

    return v0
.end method

.method public blacklist getAttributionUid()I
    .registers 3

    .line 217
    invoke-virtual {p0}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 218
    const/4 v0, -0x1

    return v0

    .line 221
    :cond_8
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    const/4 v1, 0x0

    if-lez v0, :cond_12

    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aget v0, v0, v1

    goto :goto_1e

    :cond_12
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {v0}, Landroid/os/WorkSource$WorkChain;->getAttributionUid()I

    move-result v0

    :goto_1e
    return v0
.end method

.method public greylist getName(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 231
    invoke-virtual {p0, p1}, Landroid/os/WorkSource;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getName0()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Landroid/os/WorkSource;->name0:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPackageName(I)Ljava/lang/String;
    .registers 3
    .param p1, "index"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 242
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_7

    aget-object v0, v0, p1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public whitelist getPid0()I
    .registers 2

    .line 42
    iget v0, p0, Landroid/os/WorkSource;->pid0:I

    return v0
.end method

.method public whitelist getUid(I)I
    .registers 3
    .param p1, "index"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 206
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aget v0, v0, p1

    return v0
.end method

.method public whitelist getWorkChains()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/WorkSource$WorkChain;",
            ">;"
        }
    .end annotation

    .line 622
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 300
    const/4 v0, 0x0

    .line 301
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v1, v2, :cond_14

    .line 302
    shl-int/lit8 v2, v0, 0x4

    ushr-int/lit8 v3, v0, 0x1c

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    aget v3, v3, v1

    xor-int v0, v2, v3

    .line 301
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 304
    .end local v1    # "i":I
    :cond_14
    iget-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v1, :cond_2f

    .line 305
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_19
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v1, v2, :cond_2f

    .line 306
    shl-int/lit8 v2, v0, 0x4

    ushr-int/lit8 v3, v0, 0x1c

    or-int/2addr v2, v3

    iget-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int v0, v2, v3

    .line 305
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 310
    .end local v1    # "i":I
    :cond_2f
    iget-object v1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v1, :cond_3e

    .line 311
    shl-int/lit8 v2, v0, 0x4

    ushr-int/lit8 v3, v0, 0x1c

    or-int/2addr v2, v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    xor-int v0, v2, v1

    .line 314
    :cond_3e
    return v0
.end method

.method public whitelist isEmpty()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 612
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    if-nez v0, :cond_10

    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public whitelist remove(Landroid/os/WorkSource;)Z
    .registers 7
    .param p1, "other"    # Landroid/os/WorkSource;

    .line 560
    invoke-virtual {p0}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_89

    invoke-virtual {p1}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_89

    .line 565
    :cond_f
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_1c

    iget-object v2, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v2, :cond_1c

    .line 566
    invoke-direct {p0, p1}, Landroid/os/WorkSource;->removeUids(Landroid/os/WorkSource;)Z

    move-result v0

    .local v0, "uidRemoved":Z
    goto :goto_28

    .line 568
    .end local v0    # "uidRemoved":Z
    :cond_1c
    const-string v2, " does not"

    if-eqz v0, :cond_62

    .line 572
    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_3b

    .line 576
    invoke-direct {p0, p1}, Landroid/os/WorkSource;->removeUidsAndNames(Landroid/os/WorkSource;)Z

    move-result v0

    .line 579
    .restart local v0    # "uidRemoved":Z
    :goto_28
    const/4 v2, 0x0

    .line 580
    .local v2, "chainRemoved":Z
    iget-object v3, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v3, :cond_35

    iget-object v4, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v4, :cond_35

    .line 581
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result v2

    .line 584
    :cond_35
    if-nez v0, :cond_39

    if-eqz v2, :cond_3a

    :cond_39
    const/4 v1, 0x1

    :cond_3a
    return v1

    .line 573
    .end local v0    # "uidRemoved":Z
    .end local v2    # "chainRemoved":Z
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Target "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " has names, but other "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 569
    :cond_62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Other "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " has names, but target "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :cond_89
    :goto_89
    return v1
.end method

.method public greylist-max-o set(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 393
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 394
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    if-nez v0, :cond_c

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 395
    :cond_c
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 396
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 397
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b

    .line 398
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 400
    :cond_1b
    return-void
.end method

.method public greylist-max-o set(ILjava/lang/String;)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 404
    if-eqz p2, :cond_23

    .line 407
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 408
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    if-nez v0, :cond_12

    .line 409
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 410
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 412
    :cond_12
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 413
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aput-object p2, v0, v1

    .line 414
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_22

    .line 415
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 417
    :cond_22
    return-void

    .line 405
    :cond_23
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Name can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist set(Landroid/os/WorkSource;)V
    .registers 8
    .param p1, "other"    # Landroid/os/WorkSource;

    .line 350
    const/4 v0, 0x0

    if-nez p1, :cond_d

    .line 351
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 352
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    .line 353
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 355
    :cond_c
    return-void

    .line 357
    :cond_d
    iget v1, p1, Landroid/os/WorkSource;->mNum:I

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 358
    iget-object v2, p1, Landroid/os/WorkSource;->mUids:[I

    const/4 v3, 0x0

    if-eqz v2, :cond_46

    .line 359
    iget-object v4, p0, Landroid/os/WorkSource;->mUids:[I

    if-eqz v4, :cond_21

    array-length v5, v4

    if-lt v5, v1, :cond_21

    .line 360
    invoke-static {v2, v0, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_29

    .line 362
    :cond_21
    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 364
    :goto_29
    iget-object v1, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v1, :cond_43

    .line 365
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v2, :cond_3a

    array-length v3, v2

    iget v4, p0, Landroid/os/WorkSource;->mNum:I

    if-lt v3, v4, :cond_3a

    .line 366
    invoke-static {v1, v0, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4a

    .line 368
    :cond_3a
    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    goto :goto_4a

    .line 371
    :cond_43
    iput-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    goto :goto_4a

    .line 374
    :cond_46
    iput-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    .line 375
    iput-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 378
    :goto_4a
    iget-object v0, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_80

    .line 379
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_56

    .line 380
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_63

    .line 382
    :cond_56
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 385
    :goto_63
    iget-object v0, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_69
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource$WorkChain;

    .line 386
    .local v1, "chain":Landroid/os/WorkSource$WorkChain;
    iget-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    new-instance v3, Landroid/os/WorkSource$WorkChain;

    invoke-direct {v3, v1}, Landroid/os/WorkSource$WorkChain;-><init>(Landroid/os/WorkSource$WorkChain;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    .end local v1    # "chain":Landroid/os/WorkSource$WorkChain;
    goto :goto_69

    .line 389
    :cond_80
    return-void
.end method

.method public whitelist setName0(Ljava/lang/String;)V
    .registers 2
    .param p1, "name0"    # Ljava/lang/String;

    .line 36
    iput-object p1, p0, Landroid/os/WorkSource;->name0:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public whitelist setPid0(I)V
    .registers 2
    .param p1, "pid0"    # I

    .line 46
    iput p1, p0, Landroid/os/WorkSource;->pid0:I

    .line 47
    return-void
.end method

.method public blacklist setReturningDiffs(Landroid/os/WorkSource;)[Landroid/os/WorkSource;
    .registers 7
    .param p1, "other"    # Landroid/os/WorkSource;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 433
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v0

    .line 434
    const/4 v1, 0x0

    :try_start_4
    sput-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 435
    sput-object v1, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    .line 436
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2, v2}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    .line 437
    sget-object v3, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    if-nez v3, :cond_17

    sget-object v4, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    if-eqz v4, :cond_15

    goto :goto_17

    .line 443
    :cond_15
    monitor-exit v0

    return-object v1

    .line 438
    :cond_17
    :goto_17
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/os/WorkSource;

    .line 439
    .local v1, "diffs":[Landroid/os/WorkSource;
    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 440
    sget-object v3, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    aput-object v3, v1, v2

    .line 441
    monitor-exit v0

    return-object v1

    .line 444
    .end local v1    # "diffs":[Landroid/os/WorkSource;
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public whitelist size()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 186
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 1220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1221
    .local v0, "result":Ljava/lang/StringBuilder;
    const-string v1, "WorkSource{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1222
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    const-string v3, ", "

    if-ge v1, v2, :cond_30

    .line 1223
    if-eqz v1, :cond_16

    .line 1224
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1226
    :cond_16
    iget-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1227
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v2, :cond_2d

    .line 1228
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1222
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1233
    .end local v1    # "i":I
    :cond_30
    iget-object v1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v1, :cond_53

    .line 1234
    const-string v1, " chains="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3a
    iget-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_53

    .line 1236
    if-eqz v1, :cond_47

    .line 1237
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    :cond_47
    iget-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1235
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 1243
    .end local v1    # "i":I
    :cond_53
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o transferWorkChains(Landroid/os/WorkSource;)V
    .registers 4
    .param p1, "other"    # Landroid/os/WorkSource;

    .line 632
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 633
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 636
    :cond_7
    iget-object v0, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_2b

    .line 640
    :cond_12
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-nez v0, :cond_1e

    .line 641
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 644
    :cond_1e
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 645
    iget-object v0, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 646
    return-void

    .line 637
    :cond_2b
    :goto_2b
    return-void
.end method

.method public whitelist withoutNames()Landroid/os/WorkSource;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 487
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p0}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    .line 488
    .local v0, "copy":Landroid/os/WorkSource;
    invoke-direct {v0}, Landroid/os/WorkSource;->clearNames()V

    .line 489
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1203
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1204
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1205
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1207
    iget-object v0, p0, Landroid/os/WorkSource;->name0:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1208
    iget v0, p0, Landroid/os/WorkSource;->pid0:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1210
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-nez v0, :cond_22

    .line 1211
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2e

    .line 1213
    :cond_22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1214
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 1216
    :goto_2e
    return-void
.end method
