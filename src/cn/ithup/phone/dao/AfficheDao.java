package cn.ithup.phone.dao;

import java.util.List;

import cn.ithup.phone.pojo.Affiche;

/**
 * 公告模块功能：
 * 			后台操作：公告信息的添加、删除、查询、修改
 * 			前台：商城公告
 * @author acer
 *
 */
public interface AfficheDao {
		/**
		 * 公告信息的添加功能
		 * @param affiche
		 * @return
		 * @throws Exception
		 */
		public void addAffiche(Affiche affiche) throws Exception;
		
		/**
		 * 公告信息的删除功能：
		 * 			根据公告主键删除
		 * @param afficheId
		 * @return
		 * @throws Exception
		 */
		public void deleteAffiche(Integer afficheId) throws Exception;
		
		/**
		 * 修改公告信息
		 * @param affiche
		 * @return
		 * @throws Exception
		 */
		public void modifyAffiche(Affiche affiche) throws Exception;
		
		/**
		 * 查询所有公告信息
		 * @return
		 * @throws Exception
		 */
		public List<Affiche> findAllAffiche() throws Exception;
		
		/**
		 * 根据公告主键查询公告详细信息
		 * @param afficheId
		 * @return
		 * @throws Exception
		 */
		public Affiche findAfficheByPrimaryKey(Integer afficheId) throws Exception;
}
