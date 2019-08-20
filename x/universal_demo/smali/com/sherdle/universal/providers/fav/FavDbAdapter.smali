.class public Lcom/sherdle/universal/providers/fav/FavDbAdapter;
.super Ljava/lang/Object;
.source "FavDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sherdle/universal/providers/fav/FavDbAdapter$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_CREATE:Ljava/lang/String; = "create table notes (_id integer primary key autoincrement, title text not null, obj varbinary not null, cat int not null);"

.field private static final DATABASE_NAME:Ljava/lang/String; = "data"

.field private static final DATABASE_TABLE:Ljava/lang/String; = "notes"

.field private static final DATABASE_VERSION:I = 0x2

.field public static final KEY_OBJECT:Ljava/lang/String; = "obj"

.field public static final KEY_PROVIDER:Ljava/lang/String; = "cat"

.field public static final KEY_ROWID:Ljava/lang/String; = "_id"

.field public static final KEY_RSS:I = 0x2

.field public static final KEY_TITLE:Ljava/lang/String; = "title"

.field public static final KEY_WEB:I = 0x3

.field public static final KEY_WOOCOMMERCE:I = 0x5

.field public static final KEY_WORDPRESS:I = 0x1

.field public static final KEY_YOUTUBE:I = 0x4

.field private static final TAG:Ljava/lang/String; = "NotesDbAdapter"


# instance fields
.field private final mCtx:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/sherdle/universal/providers/fav/FavDbAdapter$DatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/sherdle/universal/providers/fav/FavDbAdapter;->mCtx:Landroid/content/Context;

    return-void
.end method

.method public static getSerializedObject(Ljava/io/Serializable;)[B
    .locals 3

    .line 156
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    .line 159
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 160
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 169
    :catch_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 166
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 167
    :catch_1
    throw p0

    :catch_2
    move-object v2, v1

    .line 166
    :catch_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-object v1
.end method

.method public static readSerializedObject([B)Ljava/io/Serializable;
    .locals 2

    .line 177
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 p0, 0x0

    .line 180
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 181
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-object p0, v0

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v0, p0

    move-object p0, v1

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_0
    :try_start_3
    invoke-virtual {p0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 188
    :catch_1
    throw v0

    :catch_2
    move-object v1, p0

    .line 186
    :catch_3
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 190
    :catch_4
    :goto_1
    check-cast p0, Ljava/io/Serializable;

    return-object p0
.end method


# virtual methods
.method public addFavorite(Ljava/lang/String;Ljava/io/Serializable;I)J
    .locals 2

    .line 98
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "title"

    .line 99
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "obj"

    .line 100
    invoke-static {p2}, Lcom/sherdle/universal/providers/fav/FavDbAdapter;->getSerializedObject(Ljava/io/Serializable;)[B

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string p1, "cat"

    .line 101
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    iget-object p1, p0, Lcom/sherdle/universal/providers/fav/FavDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "notes"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method public checkEvent(Ljava/lang/String;Ljava/io/Serializable;I)Z
    .locals 8

    .line 147
    iget-object v0, p0, Lcom/sherdle/universal/providers/fav/FavDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "notes"

    const/4 p2, 0x1

    new-array v2, p2, [Ljava/lang/String;

    const-string p3, "title"

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const-string p3, "title = ?"

    new-array v4, p2, [Ljava/lang/String;

    aput-object p1, v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 152
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    xor-int/2addr p1, p2

    return p1
.end method

.method public close()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/sherdle/universal/providers/fav/FavDbAdapter;->mDbHelper:Lcom/sherdle/universal/providers/fav/FavDbAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/fav/FavDbAdapter$DatabaseHelper;->close()V

    return-void
.end method

.method public deleteFav(J)Z
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/sherdle/universal/providers/fav/FavDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "notes"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public emptyDatabase()V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/sherdle/universal/providers/fav/FavDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "notes"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public getFavorite(J)Landroid/database/Cursor;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/sherdle/universal/providers/fav/FavDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "notes"

    const/4 v1, 0x4

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "title"

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const-string v1, "obj"

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const-string v1, "cat"

    const/4 v4, 0x3

    aput-object v1, v3, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 133
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 137
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    return-object p1
.end method

.method public getFavorites()Landroid/database/Cursor;
    .locals 8

    .line 125
    iget-object v0, p0, Lcom/sherdle/universal/providers/fav/FavDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "notes"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "title"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "obj"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-string v3, "cat"

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public open()Lcom/sherdle/universal/providers/fav/FavDbAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 82
    :try_start_0
    new-instance v0, Lcom/sherdle/universal/providers/fav/FavDbAdapter$DatabaseHelper;

    iget-object v1, p0, Lcom/sherdle/universal/providers/fav/FavDbAdapter;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sherdle/universal/providers/fav/FavDbAdapter$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sherdle/universal/providers/fav/FavDbAdapter;->mDbHelper:Lcom/sherdle/universal/providers/fav/FavDbAdapter$DatabaseHelper;

    .line 83
    iget-object v0, p0, Lcom/sherdle/universal/providers/fav/FavDbAdapter;->mDbHelper:Lcom/sherdle/universal/providers/fav/FavDbAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcom/sherdle/universal/providers/fav/FavDbAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/sherdle/universal/providers/fav/FavDbAdapter;->mDb:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "NotesDbAdapter"

    const-string v1, "Exception"

    .line 85
    invoke-static {v0, v1}, Lcom/sherdle/universal/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method
